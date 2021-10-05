import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:twilio_conversations/twilio_conversations.dart';

class ConversationsNotifier extends ChangeNotifier {
  final plugin = TwilioConversations();
  ConversationClient? client;
  bool isClientInitialized = false;
  TextEditingController identityController = TextEditingController();
  String identity = '';

  List<Conversation> conversations = [];
  Map<String, int> unreadMessageCounts = {};

  final subscriptions = <StreamSubscription>[];

  void updateIdentity(String identity) {
    this.identity = identity;
    notifyListeners();
  }

  Future<void> create({required String jwtToken}) async {
    await TwilioConversations.debug(dart: true, native: true, sdk: false);

    print('debug logging set, creating client...');
    client = await plugin.create(jwtToken: jwtToken);

    print('Client initialized');
    print('Your Identity: ${client?.myIdentity}');

    final uClient = client;
    if (uClient != null) {
      isClientInitialized = true;
      notifyListeners();

      subscriptions.add(uClient.onConversationAdded.listen((event) {
        getMyConversations();
      }));

      subscriptions.add(uClient.onConversationUpdated.listen((event) {
        getMyConversations();
      }));

      subscriptions.add(uClient.onConversationDeleted.listen((event) {
        getMyConversations();
      }));
    }
  }

  Future<void> updateToken({required String jwtToken}) async {
    await client?.updateToken(jwtToken);
    return;
  }

  Future<void> shutdown() async {
    final client = TwilioConversations.conversationClient;
    if (client != null) {
      await client.shutdown();
      isClientInitialized = false;
      notifyListeners();
    }
  }

  Future<void> join(Conversation conversation) async {
    await conversation.join();
    notifyListeners();
  }

  Future<void> leave(Conversation conversation) async {
    await conversation.leave();
    notifyListeners();
  }

  Future<Conversation?> createConversation(
      {String friendlyName = 'Test Conversation'}) async {
    var result = await TwilioConversations.conversationClient
        ?.createConversation(friendlyName: friendlyName);
    print('Conversation successfully created: ${result?.friendlyName}');
    return result;
  }

  Future<void> getMyConversations() async {
    final myConversations =
        await TwilioConversations.conversationClient?.getMyConversations();

    if (myConversations != null) {
      conversations = myConversations;
      await Future.forEach(conversations, (Conversation conversation) async {
        final unreadMessages = await conversation.getUnreadMessagesCount();
        unreadMessageCounts[conversation.sid] = unreadMessages ?? 0;
      });
      notifyListeners();
    }
  }

  Future<void> registerForNotification() async {
    var token;
    if (Platform.isAndroid) {
      token = await FirebaseMessaging.instance.getToken();
    }
    await client?.registerForNotification(token);
  }

  Future<void> unregisterForNotification() async {
    var token;
    if (Platform.isAndroid) {
      token = await FirebaseMessaging.instance.getToken();
    }
    await client?.unregisterForNotification(token);
  }

  void cancelSubscriptions() {
    subscriptions.forEach((sub) {
      sub.cancel();
    });
  }
}

// Mocks generated by Mockito 5.0.16 from annotations
// in twilio_conversations/example/ios/.symlinks/plugins/twilio_conversations/test/conversation/conversation_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:twilio_conversations/api.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeMessageData_0 extends _i1.Fake implements _i2.MessageData {}

class _FakeParticipantData_1 extends _i1.Fake implements _i2.ParticipantData {}

class _FakeMessageCount_2 extends _i1.Fake implements _i2.MessageCount {}

/// A class which mocks [ConversationApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockConversationApi extends _i1.Mock implements _i2.ConversationApi {
  MockConversationApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> join(String? arg_conversationSid) =>
      (super.noSuchMethod(Invocation.method(#join, [arg_conversationSid]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> leave(String? arg_conversationSid) =>
      (super.noSuchMethod(Invocation.method(#leave, [arg_conversationSid]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<void> destroy(String? arg_conversationSid) =>
      (super.noSuchMethod(Invocation.method(#destroy, [arg_conversationSid]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> typing(String? arg_conversationSid) =>
      (super.noSuchMethod(Invocation.method(#typing, [arg_conversationSid]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<_i2.MessageData> sendMessage(
          String? arg_conversationSid, _i2.MessageOptionsData? arg_options) =>
      (super.noSuchMethod(
          Invocation.method(#sendMessage, [arg_conversationSid, arg_options]),
          returnValue:
              Future<_i2.MessageData>.value(_FakeMessageData_0())) as _i3
          .Future<_i2.MessageData>);
  @override
  _i3.Future<bool> addParticipantByIdentity(
          String? arg_conversationSid, String? arg_identity) =>
      (super.noSuchMethod(
          Invocation.method(
              #addParticipantByIdentity, [arg_conversationSid, arg_identity]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> removeParticipant(
          String? arg_conversationSid, String? arg_participantSid) =>
      (super.noSuchMethod(
          Invocation.method(
              #removeParticipant, [arg_conversationSid, arg_participantSid]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> removeParticipantByIdentity(
          String? arg_conversationSid, String? arg_identity) =>
      (super.noSuchMethod(
          Invocation.method(#removeParticipantByIdentity,
              [arg_conversationSid, arg_identity]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<_i2.ParticipantData> getParticipantByIdentity(
          String? arg_conversationSid, String? arg_identity) =>
      (super.noSuchMethod(
          Invocation.method(
              #getParticipantByIdentity, [arg_conversationSid, arg_identity]),
          returnValue: Future<_i2.ParticipantData>.value(
              _FakeParticipantData_1())) as _i3.Future<_i2.ParticipantData>);
  @override
  _i3.Future<_i2.ParticipantData> getParticipantBySid(
          String? arg_conversationSid, String? arg_participantSid) =>
      (super.noSuchMethod(
          Invocation.method(
              #getParticipantBySid, [arg_conversationSid, arg_participantSid]),
          returnValue: Future<_i2.ParticipantData>.value(
              _FakeParticipantData_1())) as _i3.Future<_i2.ParticipantData>);
  @override
  _i3.Future<List<_i2.ParticipantData?>> getParticipantsList(
          String? arg_conversationSid) =>
      (super.noSuchMethod(
              Invocation.method(#getParticipantsList, [arg_conversationSid]),
              returnValue: Future<List<_i2.ParticipantData?>>.value(
                  <_i2.ParticipantData?>[]))
          as _i3.Future<List<_i2.ParticipantData?>>);
  @override
  _i3.Future<_i2.MessageCount> getMessagesCount(String? arg_conversationSid) =>
      (super.noSuchMethod(
              Invocation.method(#getMessagesCount, [arg_conversationSid]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<_i2.MessageCount> getUnreadMessagesCount(
          String? arg_conversationSid) =>
      (super.noSuchMethod(
              Invocation.method(#getUnreadMessagesCount, [arg_conversationSid]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<_i2.MessageCount> advanceLastReadMessageIndex(
          String? arg_conversationSid, int? arg_lastReadMessageIndex) =>
      (super.noSuchMethod(
              Invocation.method(#advanceLastReadMessageIndex,
                  [arg_conversationSid, arg_lastReadMessageIndex]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<_i2.MessageCount> setLastReadMessageIndex(
          String? arg_conversationSid, int? arg_lastReadMessageIndex) =>
      (super.noSuchMethod(
              Invocation.method(#setLastReadMessageIndex,
                  [arg_conversationSid, arg_lastReadMessageIndex]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<_i2.MessageCount> setAllMessagesRead(
          String? arg_conversationSid) =>
      (super.noSuchMethod(
              Invocation.method(#setAllMessagesRead, [arg_conversationSid]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<_i2.MessageCount> setAllMessagesUnread(
          String? arg_conversationSid) =>
      (super.noSuchMethod(
              Invocation.method(#setAllMessagesUnread, [arg_conversationSid]),
              returnValue:
                  Future<_i2.MessageCount>.value(_FakeMessageCount_2()))
          as _i3.Future<_i2.MessageCount>);
  @override
  _i3.Future<List<_i2.MessageData?>> getMessagesAfter(
          String? arg_conversationSid, int? arg_index, int? arg_count) =>
      (super.noSuchMethod(
          Invocation.method(
              #getMessagesAfter, [arg_conversationSid, arg_index, arg_count]),
          returnValue:
              Future<List<_i2.MessageData?>>.value(<_i2.MessageData?>[])) as _i3
          .Future<List<_i2.MessageData?>>);
  @override
  _i3.Future<List<_i2.MessageData?>> getMessagesBefore(
          String? arg_conversationSid, int? arg_index, int? arg_count) =>
      (super.noSuchMethod(
          Invocation.method(
              #getMessagesBefore, [arg_conversationSid, arg_index, arg_count]),
          returnValue:
              Future<List<_i2.MessageData?>>.value(<_i2.MessageData?>[])) as _i3
          .Future<List<_i2.MessageData?>>);
  @override
  _i3.Future<_i2.MessageData> getMessageByIndex(
          String? arg_conversationSid, int? arg_messageIndex) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getMessageByIndex, [arg_conversationSid, arg_messageIndex]),
              returnValue: Future<_i2.MessageData>.value(_FakeMessageData_0()))
          as _i3.Future<_i2.MessageData>);
  @override
  _i3.Future<List<_i2.MessageData?>> getLastMessages(
          String? arg_conversationSid, int? arg_count) =>
      (super.noSuchMethod(
          Invocation.method(#getLastMessages, [arg_conversationSid, arg_count]),
          returnValue:
              Future<List<_i2.MessageData?>>.value(<_i2.MessageData?>[])) as _i3
          .Future<List<_i2.MessageData?>>);
  @override
  _i3.Future<bool> removeMessage(
          String? arg_conversationSid, int? arg_messageIndex) =>
      (super.noSuchMethod(
          Invocation.method(
              #removeMessage, [arg_conversationSid, arg_messageIndex]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<void> setAttributes(
          String? arg_conversationSid, _i2.AttributesData? arg_attributes) =>
      (super.noSuchMethod(
          Invocation.method(
              #setAttributes, [arg_conversationSid, arg_attributes]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> setFriendlyName(
          String? arg_conversationSid, String? arg_friendlyName) =>
      (super.noSuchMethod(
          Invocation.method(
              #setFriendlyName, [arg_conversationSid, arg_friendlyName]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> setNotificationLevel(
          String? arg_conversationSid, String? arg_notificationLevel) =>
      (super.noSuchMethod(
          Invocation.method(#setNotificationLevel,
              [arg_conversationSid, arg_notificationLevel]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> setUniqueName(
          String? arg_conversationSid, String? arg_uniqueName) =>
      (super.noSuchMethod(
          Invocation.method(
              #setUniqueName, [arg_conversationSid, arg_uniqueName]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  String toString() => super.toString();
}

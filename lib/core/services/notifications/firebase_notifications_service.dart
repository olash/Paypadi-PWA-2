import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:paypadi/core/models/push_notifications_message/push_notifications_message.dart';
import 'package:paypadi/core/services/notifications/notifications_service.dart';

class FirebaseNotificationsService implements INotificationsService {
  FirebaseNotificationsService(this._messaging);
  final FirebaseMessaging _messaging;

  // ──────────────────────────────────────────────────────────────────────────
  // ⚠️  SETUP REQUIRED — Replace with your VAPID public key from Firebase
  // Console → Project Settings → Cloud Messaging → Web Push certificates.
  // ──────────────────────────────────────────────────────────────────────────
  static const String _vapidKey = 'YOUR_VAPID_PUBLIC_KEY';

  @override
  Future<void> initialize() async {
    // setForegroundNotificationPresentationOptions is an iOS-only API.
    // Calling it on web throws a PlatformException.
    if (!kIsWeb) {
      await _messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  @override
  Future<bool> requestPermission() async {
    final settings = await _messaging.requestPermission();
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  @override
  Future<String?> getToken() async {
    // Web push requires the VAPID key to obtain an FCM registration token.
    return _messaging.getToken(
      vapidKey: kIsWeb ? _vapidKey : null,
    );
  }

  @override
  Stream<String> get onTokenRefresh {
    return _messaging.onTokenRefresh;
  }

  @override
  Stream<PushNotificationMessage> get onForegroundMessage {
    return FirebaseMessaging.onMessage.map(_mapToGenericMessage);
  }

  @override
  Stream<PushNotificationMessage> get onMessageOpenedApp {
    return FirebaseMessaging.onMessageOpenedApp.map(_mapToGenericMessage);
  }

  @override
  Future<PushNotificationMessage?> getInitialMessage() async {
    final RemoteMessage? initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      return _mapToGenericMessage(initialMessage);
    }
    return null;
  }

  @override
  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  @override
  Future<void> unsubscribeFromTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }

  // --- Helper Methods ---

  PushNotificationMessage _mapToGenericMessage(RemoteMessage message) {
    return PushNotificationMessage(
      messageId: message.messageId,
      title: message.notification?.title,
      body: message.notification?.body,
      data: message.data,
    );
  }
}

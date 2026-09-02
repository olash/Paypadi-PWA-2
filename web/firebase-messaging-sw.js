// firebase-messaging-sw.js
// ─────────────────────────────────────────────────────────────────────────────
// FCM Web Push background message handler.
//
// SETUP REQUIRED:
//   1. Go to Firebase Console → Project Settings → Cloud Messaging
//   2. Under "Web configuration" → "Web Push certificates", click
//      "Generate key pair" and copy the VAPID public key.
//   3. Replace the placeholder values below with your actual Firebase
//      web app config (from Firebase Console → Project Settings → Your apps
//      → Web app → SDK setup and configuration).
//   4. Pass the VAPID key to getToken() inside your Dart notification service.
// ─────────────────────────────────────────────────────────────────────────────

importScripts('https://www.gstatic.com/firebasejs/10.12.0/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/10.12.0/firebase-messaging-compat.js');

// ⚠️  VAPID key still needed — see comment at top of file.
firebase.initializeApp({
  apiKey:            'AIzaSyCuApm_zvL5-N-dP91KFE2j29TACF09fXM',
  authDomain:        'paypadi-3ac4c.firebaseapp.com',
  projectId:         'paypadi-3ac4c',
  storageBucket:     'paypadi-3ac4c.firebasestorage.app',
  messagingSenderId: '513436288323',
  appId:             '1:513436288323:web:e3a6e1208e6b73a6369bf6',
  measurementId:     'G-TDD702KZFQ',
});

const messaging = firebase.messaging();

// Handle background push messages (app not in foreground / tab closed).
messaging.onBackgroundMessage(function(payload) {
  console.log('[firebase-messaging-sw.js] Background message received:', payload);

  const notificationTitle = payload.notification?.title ?? 'PayPadi';
  const notificationOptions = {
    body:  payload.notification?.body ?? '',
    icon:  '/icons/Icon-192.png',
    badge: '/icons/Icon-192.png',
    data:  payload.data ?? {},
    vibrate: [200, 100, 200],
    tag:  'paypadi-notification', // collapses duplicate notifications
  };

  return self.registration.showNotification(notificationTitle, notificationOptions);
});

// Optional: Handle notification click → focus/open the app tab.
self.addEventListener('notificationclick', function(event) {
  event.notification.close();
  event.waitUntil(
    clients.matchAll({ type: 'window', includeUncontrolled: true }).then(function(clientList) {
      for (const client of clientList) {
        if (client.url.includes(self.location.origin) && 'focus' in client) {
          return client.focus();
        }
      }
      if (clients.openWindow) {
        return clients.openWindow('/');
      }
    }),
  );
});

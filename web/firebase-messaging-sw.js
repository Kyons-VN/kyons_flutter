importScripts('https://www.gstatic.com/firebasejs/10.5.2/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/10.5.2/firebase-messaging-compat.js');
firebase.initializeApp({
  apiKey: 'AIzaSyD1kg_RXC6PACtLW0GbHnECUtsfQd2gMt0',
  appId: '1:830127784291:web:0bc7e49b17cc5b981b5356',
  messagingSenderId: '830127784291',
  projectId: 'kyonsvn',
  authDomain: 'kyonsvn.firebaseapp.com',
  storageBucket: 'kyonsvn.appspot.com',
  measurementId: 'G-9LET8HS9P1',
});
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);
  // Customize notification here
  const notificationTitle = 'Background Message Title';
  const notificationOptions = {
    body: 'Background Message body.',
    icon: '/icons/Icon-512.png',
  };
  return self.registration.showNotification(notificationTitle, notificationOptions);
});

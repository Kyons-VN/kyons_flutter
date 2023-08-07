import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../boostrap/config_reader.dart';

final serverApi = ConfigReader.serverFirebase();

class FirebaseApi {
  final _firebaseMessage = FirebaseMessaging.instance;
  final api = Dio();

  Future<Unit> initNotification() async {
    await _firebaseMessage.requestPermission();
    final fcmToken = await _firebaseMessage.getToken();
    print(fcmToken);
    // TODO: send fcmToken to server
    FirebaseMessaging.onBackgroundMessage(handler);

    return unit;
  }

  Future<Unit> initFirestore(String userId) async {
    final fcmToken = await _firebaseMessage.getToken();
    await api.post('$serverApi/noti/initialize', data: {'userId': userId, 'fcmToken': fcmToken});
    return unit;
  }

  Future<Unit> handler(RemoteMessage message) async {
    print(message.notification?.title);
    print(message.notification?.body);
    print(message.data);
    return unit;
  }
}

final firebaseApiProvider = Provider<FirebaseApi>((ref) => FirebaseApi());

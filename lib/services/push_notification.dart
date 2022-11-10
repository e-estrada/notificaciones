// SHA1: F2:0C:C1:C4:E1:65:07:F6:2D:E9:2C:59:F6:2D:4C:54:0B:99:57:61

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initializeApp() async {
    //Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print(token);

    //Local Notifications
  }
}

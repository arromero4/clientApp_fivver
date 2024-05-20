import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCZm0d33qnKal0gOu10-I6gcMNWCfjvzlc",
            authDomain: "hondamxmobile-t0u85x.firebaseapp.com",
            projectId: "hondamxmobile-t0u85x",
            storageBucket: "hondamxmobile-t0u85x.appspot.com",
            messagingSenderId: "1077449355515",
            appId: "1:1077449355515:web:2c4341b1ae43daa8ab005e"));
  } else {
    await Firebase.initializeApp();
  }
}

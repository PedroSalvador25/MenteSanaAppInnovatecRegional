import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBx3mnlGkINqOWMPyVopi2XIxSEXv68MRg",
            authDomain: "mentesanaflutter-2b0eb.firebaseapp.com",
            projectId: "mentesanaflutter-2b0eb",
            storageBucket: "mentesanaflutter-2b0eb.appspot.com",
            messagingSenderId: "725269336160",
            appId: "1:725269336160:web:63eebfa3b22931bf70f305",
            measurementId: "G-Q2QCB6BND6"));
  } else {
    await Firebase.initializeApp();
  }
}

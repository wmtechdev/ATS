import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGokVT2wZPlkUsTatvBWWOfXZID89q1ks",
            authDomain: "ats-hospital-ba6bd.firebaseapp.com",
            projectId: "ats-hospital-ba6bd",
            storageBucket: "ats-hospital-ba6bd.firebasestorage.app",
            messagingSenderId: "717268520940",
            appId: "1:717268520940:web:51cd356fc25cd321cafac9",
            measurementId: "G-GW78J7FS21"));
  } else {
    await Firebase.initializeApp();
  }
}

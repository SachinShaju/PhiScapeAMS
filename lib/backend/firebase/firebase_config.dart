import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYUm9PPrUWKlfmN2_vBZPpgu3rWzDZ2Gc",
            authDomain: "phi-scape-a-m-s-m8hf2i.firebaseapp.com",
            projectId: "phi-scape-a-m-s-m8hf2i",
            storageBucket: "phi-scape-a-m-s-m8hf2i.appspot.com",
            messagingSenderId: "283351401421",
            appId: "1:283351401421:web:a41717e69cf2ce6f263a84"));
  } else {
    await Firebase.initializeApp();
  }
}

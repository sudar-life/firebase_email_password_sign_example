import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_email_login/src/pages/home.dart';
import 'package:flutter_custom_email_login/src/pages/mypage.dart';

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Center(
              child: Text("파이어베이스 init 실패!"),
            );
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return Home();
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

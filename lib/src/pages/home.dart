import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_email_login/src/pages/mypage.dart';
import 'package:flutter_custom_email_login/src/pages/sign_in.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> user) {
          if (user.data == null) {
            return SignIn();
          } else {
            return MyPage();
          }
        });
  }
}

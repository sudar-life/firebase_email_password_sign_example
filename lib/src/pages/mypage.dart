import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('환영합니다. ${FirebaseAuth.instance.currentUser!.email}'),
                  ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Text("로그아웃!"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

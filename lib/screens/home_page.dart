import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseAuth authUser = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // child: StreamBuilder(
      //   stream: authUser.,
      //   builder: (context, snapshot) {

      //   },
      // ),
    );
  }
}

import 'package:flutter/material.dart';

import '../screens/login/loginpage.dart';



class DurationPage extends StatefulWidget {
  const DurationPage({Key? key}) : super(key: key);

  @override
  State<DurationPage> createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo.png",
              height: 220,
            ),
          ],
        ),
      ),
    ));
  }
}

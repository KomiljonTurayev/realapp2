import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realapp2/pages/home_page.dart';
import 'package:realapp2/pages/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String id = "splash_page";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var isLoggedIn = true;

  _initTimer() {
    Timer(Duration(seconds: 3), () {
      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/amazon.png',
              height: 80,
              width: 80,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Center(
                child: Text(
                  'From Facebook',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

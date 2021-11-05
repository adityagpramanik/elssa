import 'dart:async';

import 'package:elssa/signup.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Timer _timer;

  _SplashState() {
    _timer = new Timer(Duration(milliseconds: 1600), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/logo.png'),
                        height: 150,
                      )),
                )
              ],
            ),
          )),
    );
  }
}

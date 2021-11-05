import 'package:elssa/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            print("Back button");
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 36,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Welcome Back!',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  print("pressed facebook signin");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(117, 131, 202, 1),
                    minimumSize: Size(double.maxFinite, 75),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 48,
                      color: Colors.white,
                    ),
                    Text(
                      'CONTINUE WITH FACEBOOK',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ],
                )),
            TextButton(
                onPressed: () {
                  print("pressed facebook signin");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(double.maxFinite, 75),
                    side: BorderSide(width: 1, color: Colors.black26),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Text("G", style: TextStyle(fontSize: 24)),
                      backgroundColor: Colors.white12,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'CONTINUE WITH GOOGLE',
                      style: TextStyle(fontSize: 18, color: Colors.black45),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text("OR CONTINUE WITH PHONE NUMBER",
                style: TextStyle(color: Colors.black38, fontSize: 16)),
            Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      20,
                    )),
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('(USA) +1'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Enter Mobile Number'),
                  ],
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpPage()));
                  print("pressed login");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(double.maxFinite, 75),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Text(
                  'LOG IN',
                  style: TextStyle(fontSize: 24, color: Colors.white70),
                )),
            Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black45),
                        children: [
                      TextSpan(text: 'ALREADY HAVE AN ACCOUNT?'),
                      TextSpan(
                          text: ' SIGN UP',
                          style: TextStyle(color: Colors.blue)),
                    ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

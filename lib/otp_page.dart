import 'package:elssa/location_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
            Image(
              image: AssetImage('images/otp.png'),
              height: 250,
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Text("OTP Verification",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter the OTP sent to",
                    style: TextStyle(color: Colors.black38, fontSize: 18)),
                Text(" +1 9879878975",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('// TODO'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
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
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                  print("pressed verify");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(double.maxFinite, 75),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Text(
                  'VERIFY & PROCEED',
                  style: TextStyle(fontSize: 24, color: Colors.white70),
                )),
          ],
        ),
      ),
    );
  }
}

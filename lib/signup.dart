import 'package:elssa/login.dart';
import 'package:elssa/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //       onPressed: () {
      //         print("Hey there");
      //       },
      //       icon: Icon(Icons.arrow_back)),
      // ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
                child: CustomPaint(
                    painter: SignUpBg(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * (0.5),
                      child: Image(image: AssetImage('images/sitting.png')),
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Text('Your Home services Expert',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Continue with Phone Number',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontFamily: 'Sans',
                      )),
                  SizedBox(
                    height: 20,
                  ),
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
                        print("pressed signup");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: Size(double.maxFinite, 75),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 24, color: Colors.white70),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'VEIW OTHER OPTIONS',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black45),
                              children: [
                            TextSpan(text: 'ALREADY HAVE AN ACCOUNT?'),
                            TextSpan(
                                text: ' LOG IN',
                                style: TextStyle(color: Colors.blue)),
                          ])),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

class SignUpBg extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff85c4fe);
    path = Path();
    path.lineTo(size.width * 0.96, size.height * 0.15);
    path.cubicTo(size.width * 0.83, size.height * 0.15, size.width * 0.76,
        size.height * 0.1, size.width * 0.76, size.height * 0.1);
    path.cubicTo(size.width * 0.61, -0.01, size.width * 0.52,
        size.height * 0.01, size.width * 0.39, size.height * 0.04);
    path.cubicTo(size.width * 0.36, size.height * 0.05, size.width * 0.32,
        size.height * 0.06, size.width * 0.28, size.height * 0.06);
    path.cubicTo(size.width * 0.09, size.height * 0.1, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width * 0.09, size.height * 0.09, size.width * 0.28,
        size.height * 0.06);
    path.cubicTo(size.width * 0.32, size.height * 0.05, size.width * 0.36,
        size.height * 0.05, size.width * 0.39, size.height * 0.04);
    path.cubicTo(size.width * 0.52, size.height * 0.01, size.width * 0.61,
        -0.01, size.width * 0.76, size.height * 0.1);
    path.cubicTo(size.width * 0.76, size.height * 0.1, size.width * 0.85,
        size.height * 0.16, size.width, size.height * 0.15);
    path.cubicTo(size.width, size.height * 0.15, size.width, size.height * 0.15,
        size.width, size.height * 0.15);
    path.cubicTo(size.width * 0.98, size.height * 0.15, size.width * 0.97,
        size.height * 0.15, size.width * 0.96, size.height * 0.15);
    path.cubicTo(size.width * 0.96, size.height * 0.15, size.width * 0.96,
        size.height * 0.15, size.width * 0.96, size.height * 0.15);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = Color(0xffb5d9fb);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, 0, size.height * 0.76, 0, size.height * 0.76);
    path.cubicTo(0, size.height * 0.76, size.width * 0.08, size.height * 0.9,
        size.width * 0.27, size.height * 0.88);
    path.cubicTo(size.width * 0.47, size.height * 0.86, size.width * 0.51,
        size.height * 0.78, size.width * 0.75, size.height * 0.94);
    path.cubicTo(size.width * 0.75, size.height * 0.94, size.width * 0.83,
        size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

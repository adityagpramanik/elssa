import 'package:elssa/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hey, nice to meet you!",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                )),
            SizedBox(
              height: 10,
            ),
            Text("See services around",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w500)),
            Image(
              image: AssetImage('images/building.png'),
              height: 250,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                  print("pressed current location");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(double.maxFinite, 75),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.gps_fixed),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Your current location',
                      style: TextStyle(fontSize: 21, color: Colors.white70),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                  print("pressed some other location");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(double.maxFinite, 75),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Some other location',
                      style: TextStyle(fontSize: 21, color: Colors.black38),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on_outlined),
        titleSpacing: 0,
        title: Text('Home'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 200,
            child: Image(
              image: AssetImage('images/manbg.png'),
              height: 200,
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Center(
                    child: Image(
                        image: AssetImage('images/home.png'),
                        height: 30,
                        color: Colors.black
                        // : Colors.black26,
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Home",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Center(
                    child: Image(
                        image: AssetImage('images/gift.png'),
                        height: 30,
                        color: Colors.black26
                        // : Colors.black26,
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rewards",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Center(
                    child: Image(
                        image: AssetImage('images/orders.png'),
                        height: 30,
                        color: Colors.black26),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "My Orders",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Center(
                    child: Image(
                        image: AssetImage('images/booking.png'),
                        height: 30,
                        color: Colors.black26),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Bookings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Center(
                    child: Image(
                      image: AssetImage('images/avatar.png'),
                      height: 30,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

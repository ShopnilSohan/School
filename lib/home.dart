
import 'package:flutter/material.dart';
import 'login.dart';

class Welcome extends StatefulWidget {

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
            children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        ),
        Positioned(
          top: 200.0,
          left: 100.0,
          right: 100.0,
          child: Column(
            children: [
              Container(
                height: 180.0,
                width: 400.0,
                child: Image.asset('images/caps.png'),
              ),
            ],
          ),
        ),
        Positioned(
            top: 375.0,
            left: 50.0,
            right: 50.0,
            child: Column(
                children: <Widget>[
                  Text(
                    "Nabarun Public School",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ]
            ),
        ),

        Positioned(
                bottom: 170.0,
                left: 50.0,
                right: 50.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 29.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Check your assignments, and exams dates in no time on the go!",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
        Positioned(
        top: MediaQuery.of(context).size.height - 130,
    left: 100.0,
    right: 100.0,
    child: GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => MyLogin()),
    );
    },
    child: Container(
    width: 150.0,
    height: 55.0,
    padding: EdgeInsets.only(left: 40.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50.0),
    color: Colors.pink,
    ),
    child: Row(
    children:[
    Text(
    "GET STARTED",
    style: TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    ),
    ),
    SizedBox(width: 20.0),
    Icon(
    Icons.keyboard_arrow_right,
    color: Colors.white,
    size: 28.0,
    ),

            ]

      ),
    ),
    )
        )
    ]
    )
      )
    );
  }
}

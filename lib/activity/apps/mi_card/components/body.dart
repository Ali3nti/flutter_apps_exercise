import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apps_exercise/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: kPrimaryColor,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '!سلام، کاربر',
                    style: TextStyle(
                      fontFamily: 'Yekan',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'خوش آمدید به اپلیکیشن ما',
                    style: TextStyle(
                      fontFamily: 'Yekan',
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            size: 20.0,
                            color: Colors.teal.shade900,
                          ),
                          SizedBox(
                            width: 36.0,
                          ),
                          Text(
                            '+98 922 707 37 67',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal.shade900,
                        size: 20.0,
                      ),
                      title: Text(
                        'Ali3nti@gmail.com',
                        style: TextStyle(
                            color: Colors.teal.shade900, fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

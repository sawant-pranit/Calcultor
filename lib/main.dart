import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const Color black = Color(0xFF08090A);

  static const Color lightGrey = Color(0xFFE4E7E8);

  static const Color grey = Color(0xFFBBC3C9);

  static const Color darkGrey = Color(0xFF51555F);

  static const Color purple = Color(0xFFB6B1C7);

  static const Color darkPurple = Color(0xFF4E0B6B);

  static const Color yellow = Color(0xFFE37D2F);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.grey.shade700, Colors.grey[800], Colors.grey[850], Colors.grey[900]], // whitish to gray
            ),
          ),
          child: ListView(
            children: [
              calculationHistory,
              calcText,
              numbersContainer,
            ],
          )
        ),
      ),
    );
  }

  Widget calculationHistory = Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(right: 10),
    height: 150,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Kandersteg, Switzerland',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ],
    ),
  );

  Widget calcText = Container(
    padding: EdgeInsets.only(right: 10),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '100002000',
          style: TextStyle(
            fontSize: 48,
            color: Colors.grey[500],
          ),
        ),
      ],
    ),
  );

  Widget numbersContainer = Container(
    margin: EdgeInsets.only(left: 10),
    child: Row(
      children: [
        Column(
          children: [
            RaisedButton(
              shape: CircleBorder(
                    side: BorderSide(color: Colors.red)
              ),
              color: Colors.red.shade50,
              onPressed: () {

              },
              child: Text(
                '1'
              ),
            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '2'
              ),

            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '3'
              ),

            )
          ],
        ),
        Column(
          children: [
            RaisedButton(
              onPressed: () {

              },
              child: Text(
                  '4'
              ),
            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '5'
              ),

            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '6'
              ),

            )
          ],
        ),
        Column(
          children: [
            RaisedButton(
              onPressed: () {

              },
              child: Text(
                  '7'
              ),
            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '8'
              ),

            ),
            RaisedButton(

              onPressed: () {

              },
              child: Text(
                  '9'
              ),

            )
          ],
        ),
      ],
    ),

  );
}
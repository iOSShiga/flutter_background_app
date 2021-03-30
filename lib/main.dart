import 'package:flutter/material.dart';
import 'package:flutter_background_app/random_screen.dart';
import 'package:flutter_background_app/bubble_screen.dart';
import 'package:flutter_background_app/rain_screen.dart';
import 'package:flutter_background_app/racing_screen.dart';
import 'package:flutter_background_app/rectangle_scree.dart';
import 'package:flutter_background_app/space_screen.dart';
import 'package:animated_background/rectangles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Background Demo'),
      ),

      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              _customButton('Random Behavior', Colors.green[200], () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => RandomBehaviorScreen())
                );
              }),

              SizedBox(height: 20),

              _customButton('Bubble Behavior', Colors.blue[200], () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => BubbleBehaviorScreen())
                );
              }),

              SizedBox(height: 20),

              _customButton('Rain Behavior', Colors.orange[200], () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => RainBehaviorScreen())
                );
              }),

              SizedBox(height: 20),

              _customButton('Racing Behavior', Colors.teal[200], () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => RacingBehaviorScreen())
                );
              }),

              SizedBox(height: 20),
              
              _customButton('Space Behavior', Colors.yellow[200], () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => SpaceBehaviorScreen())
                );
              }),


              SizedBox(height: 20),

              _customButton('Rectangle Behavior', Colors.red[200], () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => RectangleBehaviorScreen())
                );
              })

            ],
          )
      ),
    );
  }
  
  Widget _customButton(String title, Color color, VoidCallback onPressed){

    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 40,
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(title,
          style: TextStyle(
          fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
    );
  }
}

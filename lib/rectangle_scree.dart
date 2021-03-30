import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';



class RectangleBehaviorScreen extends StatefulWidget {
  @override
  _RectangleBehaviorScreenState createState() => _RectangleBehaviorScreenState();
}

class _RectangleBehaviorScreenState extends State<RectangleBehaviorScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rectangle Behavior Background'),
      ),
      body: Center(
        child: AnimatedBackground(
          behaviour: RectanglesBehaviour(),
          vsync: this,
          child: Center(
            child: Text('Rectangle Behavior Background',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';



class RacingBehaviorScreen extends StatefulWidget {
  @override
  _RacingBehaviorScreenState createState() => _RacingBehaviorScreenState();
}

class _RacingBehaviorScreenState extends State<RacingBehaviorScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Racing Behavior Background'),
      ),
      body: AnimatedBackground(
        behaviour: RacingLinesBehaviour(
          direction: LineDirection.Ltr,
            numLines:100
        ),
        vsync: this,
        child: Center(
          child: Text('Racing Behavior Background',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic
          ),),
        ),
      ),
    );
  }
}

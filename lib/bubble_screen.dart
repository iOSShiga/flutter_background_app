import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';



class BubbleBehaviorScreen extends StatefulWidget {
  @override
  _BubbleBehaviorScreenState createState() => _BubbleBehaviorScreenState();
}

class _BubbleBehaviorScreenState extends State<BubbleBehaviorScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bubble Behavior Background'),
      ),
      body: Center(
        child: AnimatedBackground(
          behaviour: BubblesBehaviour(),
          vsync: this,
          child: Center(
            child: Text('Bubble Behavior Background',
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


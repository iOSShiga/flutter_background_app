import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';



class SpaceBehaviorScreen extends StatefulWidget {
  @override
  _SpaceBehaviorScreenState createState() => _SpaceBehaviorScreenState();
}

class _SpaceBehaviorScreenState extends State<SpaceBehaviorScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Behavior Background'),
      ),
      body: Center(
        child: AnimatedBackground(
          behaviour: SpaceBehaviour(),
          vsync: this,
          child: Center(
            child: Text('Space Behavior Background',
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


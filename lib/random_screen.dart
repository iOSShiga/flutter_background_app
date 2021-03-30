import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';



class RandomBehaviorScreen extends StatefulWidget {
  @override
  _RandomBehaviorScreenState createState() => _RandomBehaviorScreenState();
}

class _RandomBehaviorScreenState extends State<RandomBehaviorScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Behavior Background'),
      ),
      body: Center(
        child: AnimatedBackground(
          behaviour: RandomParticleBehaviour(),
          vsync: this,
          child: Center(
            child: Text('Random Behavior Background',
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


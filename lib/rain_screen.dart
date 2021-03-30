
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'dart:math' as math;


class RainBehaviorScreen extends StatefulWidget {
  @override
  _RainBehaviorScreenState createState() => _RainBehaviorScreenState();
}

class _RainBehaviorScreenState extends State<RainBehaviorScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rain Behavior Background'),
      ),
      body: AnimatedBackground(
        behaviour: RainParticleBehaviour(
            options: ParticleOptions(),
            paint: Paint(),
            enabled: false
        ),
        vsync: this,
        child: Center(
          child: Text('Rain Particle Background',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
          ),
        ),
      )
    );
  }
}



class RainParticleBehaviour extends RandomParticleBehaviour {

  static math.Random random = math.Random();

  bool enabled;

  RainParticleBehaviour({
    ParticleOptions options = const ParticleOptions(),
    Paint paint,
    this.enabled = true,
  }) : assert(options != null),
        super(options: options, paint: paint);

  @override
  void initPosition(Particle p) {
    // TODO: implement init

    p.cx = random.nextDouble() * size.width;

    if (p.cy == 0.0)
      p.cy = random.nextDouble() * size.height;
    else
      p.cy = random.nextDouble() * size.width * 0.2;
  }

  @override

  void initDirection(Particle p, double speed) {

    double dirX = (random.nextDouble() - 0.5);
    double dirY = random.nextDouble() * 0.5 + 0.5;
    double magSq = dirX * dirX + dirY * dirY;
    double mag = magSq <= 0 ? 1 : math.sqrt(magSq);

    p.dx = dirX / mag * speed;
    p.cy = dirY / mag * speed;

  }

  @override

  Widget builder(BuildContext context, BoxConstraints constraints, Widget child){

    return GestureDetector(
      onPanUpdate: enabled ? (details) => _updateParticles(context, details.globalPosition) : null,
    );
  }

  void _updateParticles(BuildContext context, Offset offsetGlobal) {

    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var offset = renderBox.globalToLocal(offsetGlobal);
    particles.forEach((particle) {
      var delta = (Offset(particle.cx, particle.cy) - offset);

      if(delta.distanceSquared < 70 * 70) {

        var speed = particle.speed;
        var mag = delta.distance;

        speed *= (70 - mag) / 70.0 * 2.0 + 0.5;
        speed = math.max(options.spawnMinSpeed, math.min(options.spawnMaxSpeed, speed));
        particle.dx = delta.dy / mag * speed;
      }
    });
  }
}
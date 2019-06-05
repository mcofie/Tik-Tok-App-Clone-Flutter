import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tiktok_clone/resources/dimen.dart';

class SpinnerAnimation extends StatefulWidget {
  final Widget body;

  SpinnerAnimation({this.body});

  @override
  _SpinnerAnimationState createState() =>
      _SpinnerAnimationState(body: this.body);
}

class _SpinnerAnimationState extends State<SpinnerAnimation>
    with SingleTickerProviderStateMixin {
  final Widget body;

  _SpinnerAnimationState({this.body});

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: Dimen.five),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: body,
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}

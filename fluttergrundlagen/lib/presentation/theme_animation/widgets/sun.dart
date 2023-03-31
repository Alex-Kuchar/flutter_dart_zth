import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return Sunshine(
      radius: 160,
      child: Sunshine(
        radius: 120,
        child: Sunshine(
          radius: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xDDFC554F), Color(0xDDFFF79E)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
          ),
        ),
      ),
    );
  }
}

class Sunshine extends StatelessWidget {
  final double radius;
  final Widget child;
  const Sunshine({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: Center(child: child),
    );
  }
}

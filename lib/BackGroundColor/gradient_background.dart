import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8aa7ec),
            Color(0xFF8ba3e9),
            Color(0xFF8c9fe6),
            Color(0xFF8d9be3),
            Color(0xFF8e97e0),
            Color(0xFF8f94dd),
            Color(0xFF9190db),
            Color(0xFF928dd8),
            Color(0xFF9389d4),
            Color(0xFF9485d1),
            Color(0xFF9680cd),
            Color(0xFF977cc9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}

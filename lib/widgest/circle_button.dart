import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconsize;
  final VoidCallback onPressed;

  const CircleButton(
      {super.key,
      required this.icon,
      required this.iconsize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconsize,
        onPressed: onPressed,
      ),
    );
  }
}

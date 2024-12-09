import 'package:flutter/material.dart';

class TextUtil extends StatelessWidget {
  final String text;
  final bool weight;
  final double size;
  final Color color;

  const TextUtil({
    super.key,
    required this.text,
    this.weight = false,
    this.size = 14,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

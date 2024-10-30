// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final Color colortext;
  const Category({
    Key? key,
    required this.text,
    required this.color,
    required this.colortext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: IntrinsicWidth(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: colortext,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

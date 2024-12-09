import 'package:flutter/material.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;

  const ResponsiveWrapper(
      {required this.mobileBody, required this.tabletBody, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileBody;
        } else {
          return tabletBody;
        }
      },
    );
  }
}

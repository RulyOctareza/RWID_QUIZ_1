import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/newspage',
              );
            },
            child: Text('Go to News Page')));
  }
}

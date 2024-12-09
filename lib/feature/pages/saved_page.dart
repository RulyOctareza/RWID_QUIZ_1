import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/newspage',
              );
            },
            child: Text('Go to News Page')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/todolist',
              );
            },
            child: Text('Go to todo List')),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rwid/widgets/news_page.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsPage(),
    );
  }
}

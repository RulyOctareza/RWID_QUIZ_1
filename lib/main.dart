import 'package:flutter/material.dart';
import 'package:flutter_rwid/dashboard.dart';
import 'package:flutter_rwid/home_page.dart';
import 'package:flutter_rwid/login_page.dart';
import 'package:flutter_rwid/objectbox_strore.dart';
import 'package:flutter_rwid/settings_page.dart';
import 'package:flutter_rwid/signup_page.dart';
import 'package:flutter_rwid/widgets/news_page.dart';

late ObjectBox objectbox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectbox = (await ObjectBox.create());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

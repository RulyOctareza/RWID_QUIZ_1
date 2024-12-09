import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/auth/login_page.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';
import 'package:flutter_rwid/feature/auth/signup_page.dart';

void main() {
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
      home: LoginPage(),
      
    );
  }
}

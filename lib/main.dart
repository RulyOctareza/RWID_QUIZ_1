import 'package:flutter/material.dart';
import 'package:flutter_rwid/core/database/objectbox/objectbox.dart';
import 'package:flutter_rwid/core/routes/route.dart';

late ObjectBox objectBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  objectBox = await ObjectBox.create();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}

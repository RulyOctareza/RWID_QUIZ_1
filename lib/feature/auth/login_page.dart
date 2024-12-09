import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/pages/dashboard.dart';
import 'package:flutter_rwid/feature/auth/signup_page.dart';
import 'package:flutter_rwid/feature/widgets/auth/login_form.dart';

import 'package:flutter_rwid/utils/text_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
        child: LoginForm(),
      ),
    );
  }
}

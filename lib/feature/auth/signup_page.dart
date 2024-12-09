import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/auth/login_page.dart';
import 'package:flutter_rwid/feature/auth/signup_page.dart';
import 'package:flutter_rwid/feature/widgets/auth/signup_form.dart';

import 'package:flutter_rwid/utils/text_utils.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
        child: SignupForm(),
      ),
    );
  }
}

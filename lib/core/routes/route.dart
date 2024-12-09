import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/pages/dashboard.dart';
import 'package:flutter_rwid/feature/pages/saved_page.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (context) => const Dashboard(),
  '/saved': (context) => const SavedPage(),
  '/settings': (context) => const SettingsPage(),
};

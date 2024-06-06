import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/main/main_app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MainApp());
}

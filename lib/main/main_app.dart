import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/config/routes/app_routes.dart';
import 'package:lucadev_porforlio/shared/theme/ligth_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "luis carranza",
      debugShowCheckedModeBanner: false,
      routerConfig: appRoutes,
      theme: ligthTheme,
    );
  }
}

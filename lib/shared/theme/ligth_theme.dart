import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

final ligthTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: "Manrope",
  colorScheme: ColorScheme.light(
    primary: Colors.white,
    background: AppColors.white,
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 101,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w800,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 96,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w800,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 94,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 36,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w800,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 20,
      fontFamily: "Manrope",
      fontWeight: FontWeight.w700,
      color: AppColors.white,
    ),
  ),
);

import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class AboutmePage extends StatelessWidget {
  const AboutmePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.center,
      color: AppColors.grey,
      child: Text(
        "I am a Flutter developer from Peru, specializing in creating mobile apps with an exceptional user experience.",
        textAlign: TextAlign.start,
        style: textTheme.displaySmall!.copyWith(
          color: AppColors.limonGreen,
        ),
      ),
    );
  }
}

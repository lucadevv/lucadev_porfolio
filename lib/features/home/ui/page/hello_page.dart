import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.limonGreen,
                  blurRadius: 100,
                  spreadRadius: 50,
                )
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1, -1),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.green,
                    blurRadius: 100,
                    spreadRadius: 50,
                  )
                ],
              ),
            ),
          ),
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: const Color(0xff9cc5a1).withOpacity(0.5),
          //     ),
          //   ),
          // ),
          Container(
            height: size.height,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm",
                  style: textTheme.labelLarge!.copyWith(
                    color: AppColors.green,
                  ),
                ),
                Text(
                  "Luis Carranza.",
                  style: textTheme.displayLarge!.copyWith(
                    color: AppColors.green,
                  ),
                ),
                Text(
                  "Flutter Developer.",
                  style: textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

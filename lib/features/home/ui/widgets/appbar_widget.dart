import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

final navTitle = [
  'About me',
  'Projects',
  'Contact',
];

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: preferredSize.width,
      height: preferredSize.height,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ClipRRect(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //     child: Container(
          //       decoration: const BoxDecoration(
          //         color: Colors.transparent,
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "LC",
                    style: textTheme.labelMedium,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

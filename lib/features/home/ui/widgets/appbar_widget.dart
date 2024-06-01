import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 50),
      color: Colors.black.withOpacity(0.4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "<lucadev/>",
            style: textTheme.labelMedium,
          ),
          const Spacer(),
          Text(
            "Projects",
            style: textTheme.labelMedium,
          ),
          const SizedBox(width: 40),
          Text(
            "About me",
            style: textTheme.labelMedium,
          ),
          const SizedBox(width: 40),
          Text(
            "Contact",
            style: textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

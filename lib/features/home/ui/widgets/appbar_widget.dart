import 'dart:ui';

import 'package:flutter/material.dart';

final navTitle = [
  'About me',
  'Projects',
  'Contact',
];

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  final List<bool> _isHovering = List.generate(3, (index) => false);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: widget.preferredSize.width,
      height: widget.preferredSize.height,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "<lucadev/>",
                  style: textTheme.labelMedium,
                ),
                const Spacer(),
                ...List.generate(
                  navTitle.length,
                  (index) {
                    final item = navTitle[index];
                    return MouseRegion(
                      onEnter: (_) => _onHover(index, true),
                      onExit: (_) => _onHover(index, false),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 200),
                          style: textTheme.labelMedium!.copyWith(
                            fontSize: _isHovering[index] ? 24 : 20,
                          ),
                          child: Text(
                            item,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onHover(int index, bool hovering) {
    setState(() {
      _isHovering[index] = hovering;
    });
  }
}

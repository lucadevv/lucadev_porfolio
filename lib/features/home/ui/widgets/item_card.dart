import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    Key? key,
    required this.flex,
    required this.heightPorcent,
    required this.url,
  }) : super(key: key);

  final int flex;
  final double heightPorcent;
  final String url;

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      flex: widget.flex,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovering = false;
          });
        },
        child: SizedBox(
          height: size.height * widget.heightPorcent,
          width: size.width * 0.2,
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                height: size.height * widget.heightPorcent,
                width: size.width * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AnimatedScale(
                    scale: _isHovering ? 1.1 : 1,
                    duration: const Duration(milliseconds: 200),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(_isHovering ? 0.3 : 0.0),
                        BlendMode.darken,
                      ),
                      child: Image.network(
                        widget.url,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                height: size.height * widget.heightPorcent,
                width: size.width * 0.2,
                color: Colors.transparent,
                duration: const Duration(seconds: 1),
                transform: Matrix4.translationValues(
                    0.0, 0.0, _isHovering ? 100.0 : 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Music App",
                        style: textTheme.bodyLarge!.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const FlutterLogo(
                        size: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.flex,
    required this.heightPorcent,
    required this.url,
  });

  final int flex;
  final double heightPorcent;
  final String url;

  @override
  ItemCardState createState() => ItemCardState();
}

class ItemCardState extends State<ItemCard> {
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
              Container(
                height: size.height * widget.heightPorcent,
                width: size.width * 0.2,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AnimatedScale(
                        scale: _isHovering ? 1 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: Text(
                          "Music App",
                          style: textTheme.bodyLarge!.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      AnimatedScale(
                        scale: _isHovering ? 1 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: const FlutterLogo(
                          size: 50,
                        ),
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

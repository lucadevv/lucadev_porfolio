import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';
import 'package:lucadev_porforlio/shared/constants/app_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

class ContactPage extends StatefulWidget {
  const ContactPage({
    super.key,
  });

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool _isHovering = false;
  bool _hoverResume = false;
  late int indexSelected = -1;

  Future<void> contactMe(int id) async {
    switch (id) {
      case -1:
        final Uri url = Uri.parse("www.linkedin.com/in/luis--carranza");
        if (await launchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
        break;
      case 0:
        html.window
            .open('https://www.linkedin.com/in/luis--carranza', '_blank');
        break;
      case 1:
        html.window.open('https://github.com/lucadevv', '_blank');
        break;
      case 2:
        html.window.open('mailto:luiscodecarranza@gmail.com', '_blank');
        break;
      case 3:
        html.window.open('https://www.buymeacoffee.com/lucadev', '_blank');

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contact me",
            style: textTheme.displayMedium!.copyWith(
              color: AppColors.limonGreen,
            ),
          ),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                onExit: (_) {
                  setState(() {
                    _hoverResume = false;
                  });
                },
                onHover: (_) {
                  setState(() {
                    _hoverResume = true;
                  });
                },
                child: AnimatedScale(
                  scale: _hoverResume ? 1.2 : 1,
                  duration: const Duration(milliseconds: 250),
                  child: Text(
                    "Resume",
                    style: textTheme.displayMedium!.copyWith(
                      color: AppColors.limonGreen,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ...List.generate(
                svgIcons.length,
                (index) {
                  final item = svgIcons[index];
                  return InkWell(
                    onTap: () {
                      contactMe(index);
                    },
                    child: MouseRegion(
                      onExit: (_) {
                        setState(() {
                          _isHovering = false;
                        });
                      },
                      onHover: (_) {
                        setState(() {
                          _isHovering = true;
                          indexSelected = index;
                        });
                      },
                      child: AnimatedScale(
                        scale: _isHovering && index == indexSelected ? 1.5 : 1,
                        duration: const Duration(milliseconds: 250),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SvgPicture.asset(
                            width: 40,
                            item,
                            colorFilter: ColorFilter.mode(
                              AppColors.limonGreen,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
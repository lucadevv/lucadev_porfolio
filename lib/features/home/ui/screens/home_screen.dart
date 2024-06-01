import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lucadev_porforlio/features/home/ui/widgets/appbar_widget.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  static const name = "/home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
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
                        Container(
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
                  ),
                  Container(
                    height: size.height,
                    width: size.width,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -1),
              child: AppbarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

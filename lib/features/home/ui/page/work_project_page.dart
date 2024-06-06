import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:lucadev_porforlio/features/home/ui/widgets/item_card.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class WorkProjectsPage extends StatefulWidget {
  const WorkProjectsPage({
    super.key,
    required double widthFactor,
  }) : _widthFactor = widthFactor;

  final double _widthFactor;

  @override
  State<WorkProjectsPage> createState() => _WorkProjectsPageState();
}

class _WorkProjectsPageState extends State<WorkProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.grey,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.width * widget._widthFactor,
            padding:
                const EdgeInsets.only(top: kToolbarHeight, right: 50, left: 50),
            decoration: BoxDecoration(
              color: AppColors.limonGreen,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AutoSizeText(
                  "Personal Projects",
                  textAlign: TextAlign.start,
                  style: textTheme.displayMedium!.copyWith(
                    color: AppColors.green,
                  ),
                  maxLines: 1,
                  minFontSize: 24,
                  stepGranularity: 1,
                ),
                const SizedBox(height: 32),
                size.width > 1000
                    ? const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ItemCard(
                            flex: 3,
                            heightPorcent: 0.6,
                            url:
                                'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/267shots_so.webp',
                            nameApp: 'Music App',
                          ),
                          SizedBox(width: 32),
                          ItemCard(
                            flex: 2,
                            heightPorcent: 0.5,
                            url:
                                'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/theweather.webp',
                            nameApp: 'Weather App',
                          ),
                        ],
                      )
                    : const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ItemCard(
                              flex: 1,
                              heightPorcent: 0.2,
                              url:
                                  'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/267shots_so.webp',
                              nameApp: 'Music App',
                            ),
                            SizedBox(height: 32),
                            ItemCard(
                              flex: 1,
                              heightPorcent: 0.2,
                              url:
                                  'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/theweather.webp',
                              nameApp: 'Weather App',
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

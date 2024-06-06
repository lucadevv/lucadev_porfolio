import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/features/home/ui/widgets/item_card.dart';
import 'package:lucadev_porforlio/shared/constants/app_colors.dart';

class OthersProyectjsPage extends StatelessWidget {
  const OthersProyectjsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.limonGreen,
      width: size.width,
      height: size.height,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemCard(
            flex: 1,
            heightPorcent: 0.6,
            url:
                'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/rickandmorty.webp',
            nameApp: 'Rick and Morty',
          ),
          SizedBox(width: 32),
          ItemCard(
            flex: 2,
            heightPorcent: 0.8,
            url:
                'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/tiktokclone__1_.webp',
            nameApp: 'Tiktok Clone',
          ),
        ],
      ),
    );
  }
}

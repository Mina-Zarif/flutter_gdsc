
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 289,
          child: Image.asset(
            AppAssets.movieCover,
            alignment: AlignmentDirectional.topCenter,
            height: 217,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(AppAssets.movieImage),
              const SizedBox(width: 20),
              const Column(
                children: [
                  Text("Dora and the lost city of gold"),
                  SizedBox(height: 10),
                  Text("2019  PG-13  2h 7m"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

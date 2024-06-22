
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class SearchMovieView extends StatelessWidget {
  const SearchMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.movieCover,
          width: 140,
          height: 90,
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alita Battle Angel"),
              Text("2019"),
              Text(
                "Rosa Salazar, Christoph Waltz",
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ],
    );
  }
}

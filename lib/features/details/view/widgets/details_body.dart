import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../home/view/widgets/titled_movies_view.dart';
import 'movie_details_view.dart';

class DetailsBodyView extends StatelessWidget {
  const DetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.movieCover),
          const SizedBox(height: 15),
          const MovieDetailsView(),
          const SizedBox(height: 15),
          const TiltedMoviesView(
            title: "More Like This",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/home/view/widgets/titled_movies_view.dart';

import '../../data/model/home_movies_model.dart';
import 'banner_view.dart';
import 'new_releases_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key, required this.movies});

  final List<HomeMoviesModel> movies;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 30),
        child: Column(
          children: [
            const BannerView(),
            const SizedBox(height: 24),
            NewReleasesView(
              movies: movies,
            ),
            const SizedBox(height: 24),
            TiltedMoviesView(
              title: "Recommended",
              movies: movies,
            )
          ],
        ),
      ),
    );
  }
}

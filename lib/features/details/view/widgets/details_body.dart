import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/features/details/data/model/details_movie_model.dart';

import 'movie_details_view.dart';

class DetailsBodyView extends StatelessWidget {
  const DetailsBodyView({super.key, required this.movie});

  final DetailsMovieModel movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imgUrl + movie.backdropPath),
          const SizedBox(height: 15),
          MovieDetailsView(movie: movie),
          const SizedBox(height: 15),
          // const TiltedMoviesView(
          //   title: "More Like This",
          // ),
        ],
      ),
    );
  }
}

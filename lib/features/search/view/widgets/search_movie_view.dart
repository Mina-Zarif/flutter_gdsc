import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/features/search/data/model/search_movie_model.dart';

import '../../../../core/utils/app_assets.dart';

class SearchMovieView extends StatelessWidget {
  const SearchMovieView({super.key, required this.movie});

  final SearchMovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (movie.posterPath != null)
            ? Image.network(
                imgUrl + movie.posterPath!,
                width: 140,
                height: 100,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  AppAssets.appIcon,
                  width: 140,
                  height: 90,
                ),
              )
            : Image.asset(
                AppAssets.appIcon,
                width: 90,
                height: 100,
                fit: BoxFit.fill,
              ),
        const SizedBox(width: 25),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(movie.title ?? ""),
              Text(movie.releaseDate ?? ""),
              Text(
                movie.overview ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        ),
      ],
    );
  }
}

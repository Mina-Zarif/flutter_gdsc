import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/features/details/data/model/details_movie_model.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movie});

  final DetailsMovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(movie.releaseDate),
          // intl package
          const SizedBox(height: 20),
          Row(
            children: [
              Image.network(imgUrl + movie.posterPath, height: 250),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade600),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          movie.originalLanguage,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      movie.overview,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          movie.voteAverage.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

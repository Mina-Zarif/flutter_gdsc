import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/core/utils/go_router.dart';

import '../../data/model/home_movies_model.dart';

class TiltedMoviesView extends StatelessWidget {
  const TiltedMoviesView({
    super.key,
    required this.title,
    required this.movies,
  });

  final List<HomeMoviesModel> movies;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      height: 350,
      padding: const EdgeInsetsDirectional.only(start: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 0),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => TitledMoviesView(
                moviesModel: movies[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: 8,
            ),
          ),
          const SizedBox(height: 13)
        ],
      ),
    );
  }
}

class TitledMoviesView extends StatelessWidget {
  const TitledMoviesView({super.key, required this.moviesModel});

  final HomeMoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppRouter.router.push(AppRouter.details),
      child: SizedBox(
        width: 120,
        child: Card(
          elevation: 5,
          color: const Color(0xff282a28),
          child: Column(
            children: [
              Expanded(
                child: Image.network(imgUrl + moviesModel.posterPath!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        Text(moviesModel.voteAverage!.toStringAsFixed(1)),
                      ],
                    ),
                    Text(
                      moviesModel.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text("2018  2h 7m"),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

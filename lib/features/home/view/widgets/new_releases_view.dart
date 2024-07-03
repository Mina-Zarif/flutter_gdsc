import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/core/utils/go_router.dart';

import '../../data/model/home_movies_model.dart';

class NewReleasesView extends StatelessWidget {
  const NewReleasesView({super.key, required this.movies});

  final List<HomeMoviesModel> movies;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      height: 270,
      padding: const EdgeInsetsDirectional.only(start: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Text(
            "New Releases ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => AppRouter.router.push(
                  AppRouter.details,
                  extra: {
                    'id': movies[index].id,
                    'title': movies[index].title,
                  },
                ),
                child: Image.network(
                  '$imgUrl${movies[index].posterPath!}',
                  fit: BoxFit.fill,
                  width: 140,
                  height: 200,
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: movies.length,
            ),
          ),
          const SizedBox(height: 13)
        ],
      ),
    );
  }
}

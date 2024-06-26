import 'package:flutter/material.dart';
import 'package:flutter_gdsc/constants.dart';
import 'package:flutter_gdsc/core/utils/go_router.dart';

import '../../../../core/utils/app_assets.dart';

class TiltedMoviesView extends StatelessWidget {
  const TiltedMoviesView({super.key, required this.title});

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
              itemBuilder: (context, index) => const TitledMoviesView(),
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
  const TitledMoviesView({super.key});

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
                child: Image.asset(
                  AppAssets.movieImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text("7.7"),
                      ],
                    ),
                    Text(
                      "Dora and the lost city of gold",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("2018  2h 7m"),
                    SizedBox(height: 10),
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

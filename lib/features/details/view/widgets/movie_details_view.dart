import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Dora and the lost city of gold",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text("2019  PG-13  2h 7m"),
          const SizedBox(height: 20),
          Row(
            children: [
              Image.asset(AppAssets.movieImage),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade600),
                        color: Colors.transparent,
                      ),
                      child: const Center(child: Text("Action")),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                        "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. "),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "7.7",
                          style: TextStyle(fontSize: 15),
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
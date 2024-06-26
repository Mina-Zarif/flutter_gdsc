import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class EmptyMoviesView extends StatelessWidget {
  const EmptyMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.emptyImage),
          const SizedBox(height: 15),
          const Text(
            "No movies found",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}

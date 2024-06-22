import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/home/view/widgets/banner_view.dart';
import 'package:flutter_gdsc/features/home/view/widgets/new_releases_view.dart';
import 'package:flutter_gdsc/features/home/view/widgets/titled_movies_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 30),
        child: Column(
          children: [
            BannerView(),
            SizedBox(height: 24),
            NewReleasesView(),
            SizedBox(height: 24),
            TiltedMoviesView(
              title: "Recommended",
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/search/view/widgets/search_movie_view.dart';

class SearchMoviesView extends StatelessWidget {
  const SearchMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const SearchMovieView(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 2,
      ),
    );
  }
}

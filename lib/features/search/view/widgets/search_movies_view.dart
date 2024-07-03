import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gdsc/features/search/mange/search_cubit.dart';
import 'package:flutter_gdsc/features/search/view/widgets/search_movie_view.dart';

import 'empty_movies_view.dart';

class SearchMoviesView extends StatelessWidget {
  const SearchMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchInitial) {
            return const EmptyMoviesView();
          }
          if (state is SearchSuccess) {
            if (state.movies.isEmpty) {
              return const EmptyMoviesView();
            }
            return ListView.separated(
              itemBuilder: (context, index) => SearchMovieView(
                movie: state.movies[index],
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: state.movies.length,
            );
          }
          if (state is SearchFailure) {
            return Center(
              child: Text(state.message),
            );
          }

          /// Loading
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gdsc/features/details/mange/details_cubit.dart';
import 'package:flutter_gdsc/features/details/view/widgets/details_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.movieId,
    required this.movieTitle,
  });

  final int movieId;
  final String movieTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieTitle),
      ),
      body: BlocProvider(
        create: (context) => DetailsCubit()..getDetails(movieId),
        child: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            if (state is DetailsSuccess) {
              return DetailsBodyView(movie: state.movieModel);
            }
            if (state is DetailsFailure) {
              Center(child: Text(state.message));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

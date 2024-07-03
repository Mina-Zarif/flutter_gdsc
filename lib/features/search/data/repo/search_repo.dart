import 'package:dartz/dartz.dart';
import 'package:flutter_gdsc/core/error/failure.dart';
import 'package:flutter_gdsc/features/search/data/model/search_movie_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchMovieModel>>> searchMovies(String query);
}

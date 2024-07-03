import 'package:dartz/dartz.dart';
import 'package:flutter_gdsc/features/details/data/model/details_movie_model.dart';

import '../../../../core/error/failure.dart';

abstract class DetailsRepo {
  Future<Either<Failure, DetailsMovieModel>> getDetails(String movieId);
}

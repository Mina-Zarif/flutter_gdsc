import 'package:dartz/dartz.dart';
import 'package:flutter_gdsc/features/home/data/model/home_movies_model.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HomeMoviesModel>>> getNewReleases();
}

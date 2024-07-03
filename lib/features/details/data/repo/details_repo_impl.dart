import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gdsc/core/error/failure.dart';
import 'package:flutter_gdsc/features/details/data/model/details_movie_model.dart';

import '../../../../core/utils/api_service.dart';
import 'details_repo.dart';

class DetailsRepoImpl implements DetailsRepo {
  final ApiService apiService;

  DetailsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, DetailsMovieModel>> getDetails(String movieId) async {
    try {
      var data = await apiService.get(
        endpoint: "movie/$movieId",
      );
      return Right(DetailsMovieModel.fromJson(data));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure("Something went wrong"));
    }
  }
}

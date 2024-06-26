import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gdsc/core/error/failure.dart';
import 'package:flutter_gdsc/core/utils/api_service.dart';
import 'package:flutter_gdsc/features/home/data/model/home_movies_model.dart';
import 'package:flutter_gdsc/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<HomeMoviesModel>>> getNewReleases() async {
    try {
      var data = await apiService.get(
        endpoint: "movie/popular",
        query: {"language": "en-US", "page": "1"},
      );
      List<HomeMoviesModel> list = (data['results'] as List)
          .map((e) => HomeMoviesModel.fromJson(e))
          .toList();
      return Right(list);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure("Something went wrong"));
    }
  }
}

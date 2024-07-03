import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gdsc/features/search/data/repo/search_repo.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/utils/api_service.dart';
import '../model/search_movie_model.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<SearchMovieModel>>> searchMovies(
      String query) async {
    try {
      var data = await apiService.get(
        endpoint: "search/movie",
        query: {
          "language": "en-US",
          "page": "1",
          "query": query,
          "include_adult": false
        },
      );
      List<SearchMovieModel> list = (data['results'] as List)
          .map((e) => SearchMovieModel.fromJson(e))
          .toList();
      return Right(list);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure("Something went wrong"));
    }
  }
}

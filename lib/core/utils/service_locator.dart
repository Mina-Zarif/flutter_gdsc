import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../token_data.dart';
import 'api_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  const String baseUrl = 'https://api.themoviedb.org/3/';
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $apiKey'
          },
        ),
      ),
    ),
  );
}

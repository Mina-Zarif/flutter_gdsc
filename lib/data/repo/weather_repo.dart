import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gdsc/data/model/weather_model.dart';

class WeatherRepo {
  final dio = Dio();

  Future<Either<WeatherModel?, String?>> getData(String city) async {

    try {
      final Response response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather',
      queryParameters: {
        'q': city,
        'appid': 'f3ea4c39d9b84e7ffa2d61b52afc7317',
      });
      return Left(WeatherModel.fromJson(response.data));
    } on DioException catch (e) {
      return Right(e.message);
    }
  }
}

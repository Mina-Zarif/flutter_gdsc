part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class SuccessState extends AppState {
  final WeatherModel weatherModel;

  SuccessState(this.weatherModel);
}

final class ErrorState extends AppState {
  final String errorMsg;

  ErrorState(this.errorMsg);
}

final class LoadingState extends AppState {}

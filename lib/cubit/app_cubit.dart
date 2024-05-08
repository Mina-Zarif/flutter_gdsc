// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gdsc/data/model/weather_model.dart';
import 'package:meta/meta.dart';

import '../data/repo/weather_repo.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  final WeatherRepo weatherRepo = WeatherRepo();
  List<String> list = <String>['Cairo', 'London', 'Settle', 'NewYork'];
  String dropdownValue = 'Cairo';

  Future<void> getData() async {
    emit(LoadingState());
    var data = await weatherRepo.getData(dropdownValue);
    data.fold(
      (data) {
        emit(SuccessState(data!));
      },
      (errorMsg) {
        emit(ErrorState(errorMsg ?? "Unknown Error, Try Later"));
      },
    );
  }
}

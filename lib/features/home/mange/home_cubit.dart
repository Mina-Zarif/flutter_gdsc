import 'package:bloc/bloc.dart';
import 'package:flutter_gdsc/core/utils/api_service.dart';
import 'package:flutter_gdsc/core/utils/service_locator.dart';
import 'package:meta/meta.dart';

import '../data/model/home_movies_model.dart';
import '../data/repo/home_repo_impl.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final HomeRepoImpl _homeRepoImpl = HomeRepoImpl(getIt<ApiService>());

  Future<void> getNewReleases() async {
    emit(HomeLoading());
    var result = await _homeRepoImpl.getNewReleases();
    result.fold(
      (failure) => emit(HomeFailure(failure.errorMessage)),
      (movies) => emit(HomeSuccess(movies)),
    );
  }
}

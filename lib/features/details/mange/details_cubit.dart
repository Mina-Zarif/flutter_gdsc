import 'package:bloc/bloc.dart';
import 'package:flutter_gdsc/core/utils/api_service.dart';
import 'package:flutter_gdsc/core/utils/service_locator.dart';
import 'package:flutter_gdsc/features/details/data/model/details_movie_model.dart';
import 'package:meta/meta.dart';

import '../data/repo/details_repo_impl.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  final DetailsRepoImpl detailsRepoImpl = DetailsRepoImpl(getIt<ApiService>());

  Future<void> getDetails(int movieId) async {
    emit(DetailsLoading());
    final result = await detailsRepoImpl.getDetails(movieId.toString());
    result.fold(
      (failure) => emit(DetailsFailure(failure.errorMessage)),
      (data) => emit(DetailsSuccess(data)),
    );
  }
}

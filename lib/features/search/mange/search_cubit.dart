import 'package:bloc/bloc.dart';
import 'package:flutter_gdsc/core/utils/api_service.dart';
import 'package:flutter_gdsc/core/utils/service_locator.dart';
import 'package:flutter_gdsc/features/search/data/repo/search_repo_impl.dart';
import 'package:meta/meta.dart';

import '../data/model/search_movie_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  final SearchRepoImpl _searchRepoImpl = SearchRepoImpl(getIt<ApiService>());

  Future<void> searchMovie(String query) async {
    emit(SearchLoading());
    final result = await _searchRepoImpl.searchMovies(query);
    result.fold(
      (l) => emit(SearchFailure(l.errorMessage)),
      (r) => emit(SearchSuccess(r)),
    );
  }
}

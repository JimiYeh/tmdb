import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/repository/repository.dart';

part 'home_provider.g.dart';

@riverpod
class NowPlayingMovies extends _$NowPlayingMovies {
  int _page = 1;
  int? _totalPage;
  bool isFetching = false;

  @override
  FutureOr<List<Movie>> build() async {
    // 獲取正在上映的電影列表
    final response = await ref.read(apiRepositoryProvider).fetchNowPlayingMovieList(page: _page);
    return response.mapOr((data) {
      _page++;
      _totalPage ??= data.totalPages;
      return data.results;
    }, []);
  }

  void fetchMore() async {
    if (_page < _totalPage! && !isFetching) {
      isFetching = true;
      final response = await ref.read(apiRepositoryProvider).fetchNowPlayingMovieList(page: _page);
      isFetching = false;
      return response.whenData((data) {
        _page++;
        state = AsyncValue.data([...?state.value, ...data.results]);
      });
    }
  }
}

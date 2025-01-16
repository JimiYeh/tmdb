import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/repository/api_response.dart';
import 'package:tmdb/repository/network/network_repository.dart';

abstract interface class IRepository {
  Future<ApiResponse<MovieList>> fetchNowPlayingMovieList({required int page, CancelToken? cancelToken});
}

final apiRepositoryProvider = Provider<IRepository>((ref) => NetworkRepository(ref));

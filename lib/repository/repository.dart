import 'package:dio/dio.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/repository/api_response.dart';

abstract interface class IRepository {
  Future<ApiResponse<MovieList>> fetchNowPlayingMovieList({required int page, CancelToken? cancelToken});
}

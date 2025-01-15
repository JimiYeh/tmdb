import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/repository/api_response.dart';
import 'package:tmdb/repository/network/dio_client.dart';
import 'package:tmdb/repository/repository.dart';

const _language = 'zh-TW';
const _region = 'TW';

class NetworkRepository implements IRepository {
  final Ref _ref;
  late final DioClient _dioClient;

  NetworkRepository(this._ref) {
    _dioClient = DioClient(_ref);
  }

  @override
  Future<ApiResponse<MovieList>> fetchNowPlayingMovieList({required int page, CancelToken? cancelToken}) {
    return _dioClient.request<MovieList>(
        apiCall: (dio, {cancelToken}) => _dioClient.api.fetchNowPlayingMovieList(language: _language, page: page, region: _region));
  }
}

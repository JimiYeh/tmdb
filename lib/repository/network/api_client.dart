import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/repository/api_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET('/movie/now_playing')
  Future<ApiResponse<MovieList>> fetchNowPlayingMovieList({
    @Query('language') required String language,
    @Query('page') required int page,
    @Query('region') required String region,
  });
}

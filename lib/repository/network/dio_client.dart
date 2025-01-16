import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tmdb/flavors.dart';
import 'package:tmdb/repository/api_response.dart';
import 'package:tmdb/repository/network/api_client.dart';
import 'package:tmdb/utils/logger.dart';

class DioClient {
  final Ref ref;
  late final Dio _dio;
  late final ApiClient _apiClient;

  ApiClient get api => _apiClient;

  DioClient(this.ref) {
    _dio = Dio()
      ..options = BaseOptions(
        baseUrl: F.host,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${F.tmdbApiKey}',
        },
      )
      ..interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          logger.d('Request: ${options.uri}');
          return handler.next(options);
        },
        onError: (error, handler) {
          logger.e('Error: ${error.response?.statusCode}');
          try {
            // * 將 API 錯誤轉換為 ApiResponse
            final apiError = ApiError.fromJson(error.response?.data);
            return handler.resolve(Response(requestOptions: error.requestOptions, statusCode: apiError.statusCode, data: apiError.toJson()));
          } catch (e) {
            return handler.next(error);
          }
        },
        onResponse: (response, handler) {
          logger.d('Response: ${response.statusCode}');
          return handler.next(response);
        },
      ));

    _apiClient = ApiClient(_dio);
  }

  Future<ApiResponse<T>> request<T>({
    required Future<ApiResponse<T>> Function(Dio dio, {CancelToken? cancelToken}) apiCall,
    CancelToken? cancelToken,
  }) async {
    try {
      return await apiCall(_dio, cancelToken: cancelToken);
    } on DioException catch (e) {
      // ? 看需不需要做特殊處理 ex: retry
      return ApiResponse.exception(exception: e);
    } on Exception catch (e) {
      return ApiResponse.exception(exception: e);
    }
  }
}

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class APIHandler {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://rec.optymoney.com/api/auth',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );
  contructor() {}

  Future<Response> get(
    String url, {
    bool isAuthenticated = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (isAuthenticated) {
        options = Options(headers: {
          'Authorization': 'Bearer ${prefs.getString('access_token')}'
        });
      }

      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(
    String url, {
    data,
    bool isAuthenticated = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      if (isAuthenticated) {
        options = Options(headers: {
          'Authorization': 'Bearer ${prefs.getString('access_token')}'
        });
      }

      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}

// class Logging extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     print('REQUEST[${options.method}] => PATH: ${options.path}');
//     return super.onRequest(options, handler);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     print(
//       'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
//     );
//     return super.onResponse(response, handler);
//   }
// }

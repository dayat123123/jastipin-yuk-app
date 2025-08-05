import 'package:dio/dio.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';

class DioClient {
  final Dio dio;
  String? _accessToken;
  String? _refreshToken;

  bool _isRefreshing = false;

  final List<Future<void> Function()> _retryQueue = [];

  final String _refreshTokenUrl;

  DioClient({required String baseUrl, required String refreshTokenUrl})
    : dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          responseType: ResponseType.json,
        ),
      ),
      _refreshTokenUrl = refreshTokenUrl {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (_accessToken != null && _accessToken!.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $_accessToken';
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          final statusCode = error.response?.statusCode;
          final errorData = error.response?.data;

          if (statusCode == 401 &&
              !_isRefreshing &&
              errorData != null &&
              errorData['error'] == 'token_expired') {
            _isRefreshing = true;

            try {
              final newToken = await _refreshAccessToken();

              if (newToken != null) {
                _accessToken = newToken;

                for (var retry in _retryQueue) {
                  await retry();
                }
                _retryQueue.clear();

                final opts = error.requestOptions;
                final cloneReq = await dio.request(
                  opts.path,
                  data: opts.data,
                  queryParameters: opts.queryParameters,
                  options: Options(
                    method: opts.method,
                    headers: {
                      ...opts.headers,
                      'Authorization': 'Bearer $_accessToken',
                    },
                  ),
                );
                handler.resolve(cloneReq);
              } else {
                clearTokens();
                handler.next(error);
              }
            } catch (e) {
              handler.next(error);
            } finally {
              _isRefreshing = false;
            }
          } else if (_isRefreshing) {
            _retryQueue.add(() async {
              final opts = error.requestOptions;
              final cloneReq = await dio.request(
                opts.path,
                data: opts.data,
                queryParameters: opts.queryParameters,
                options: Options(
                  method: opts.method,
                  headers: {
                    ...opts.headers,
                    'Authorization': 'Bearer $_accessToken',
                  },
                ),
              );
              handler.resolve(cloneReq);
            });
          } else {
            handler.next(error);
          }
        },
      ),
    );
  }

  void updateBaseUrl(String newBaseUrl) {
    dio.options.baseUrl = newBaseUrl;
  }

  void setToken({required String accessToken, required String refreshToken}) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
  }

  void clearTokens() {
    _accessToken = null;
    _refreshToken = null;
  }

  Future<String?> _refreshAccessToken() async {
    try {
      final response = await dio.post(
        _refreshTokenUrl,
        data: {'refresh_token': _refreshToken},
      );

      final newAccessToken = response.data['accessToken'];
      final newRefreshToken = response.data['refreshToken'];

      if (newAccessToken != null && newRefreshToken != null) {
        _accessToken = newAccessToken;
        _refreshToken = newRefreshToken;
        return newAccessToken;
      }
    } catch (e) {
      // Bisa tambahkan logging atau logout user di sini
    }
    return null;
  }

  Future<Result<Map<String, dynamic>>> post(
    String path, {
    Map<String, dynamic>? data,
    bool includeDataKey = true,
  }) async {
    try {
      final response = await dio.post(path, data: data);
      return _handleResponse(response, includeDataKey: includeDataKey);
    } catch (e) {
      return _handleError(e);
    }
  }

  Future<Result<Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic>? queryParams,
    bool includeDataKey = true,
  }) async {
    try {
      final response = await dio.get(path, queryParameters: queryParams);
      return _handleResponse(response, includeDataKey: includeDataKey);
    } catch (e) {
      return _handleError(e);
    }
  }

  Result<Map<String, dynamic>> _handleResponse(
    Response response, {
    required bool includeDataKey,
  }) {
    if (isResponseSuccess(response.statusCode)) {
      final rawData = includeDataKey ? response.data["data"] : response.data;
      return Result.success(rawData ?? {});
    } else {
      final message =
          response.data?['error']?.toString() ??
          response.data?['message']?.toString() ??
          'Request failed with status code: ${response.statusCode}';
      return Result.failed(message);
    }
  }

  Result<Map<String, dynamic>> _handleError(Object e) {
    if (e is DioException) {
      final message =
          e.response?.data?['error']?.toString() ??
          e.response?.data?['message']?.toString() ??
          e.message ??
          'Unknown Dio error';
      return Result.failed(message);
    }
    return Result.failed('Unexpected error: ${e.toString()}');
  }

  static bool isResponseSuccess(int? code) => code == 200 || code == 201;
}

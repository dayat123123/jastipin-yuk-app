import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
          final isTokenExpiredError =
              errorData != null && errorData['error'] == 'token_expired';

          if (statusCode == 401 && isTokenExpiredError) {
            if (!_isRefreshing) {
              _isRefreshing = true;

              try {
                final success = await _refreshAccessToken();

                if (success) {
                  final retries = List<Future<void> Function()>.from(
                    _retryQueue,
                  );
                  _retryQueue.clear();

                  for (final retry in retries) {
                    await retry();
                  }

                  final opts = error.requestOptions;

                  final tempDio = Dio();
                  tempDio.options = dio.options;

                  final headers = Map<String, dynamic>.from(opts.headers)
                    ..['Authorization'] = 'Bearer $_accessToken';

                  final cloneReq = await tempDio.request(
                    opts.path,
                    data: opts.data,

                    queryParameters: opts.queryParameters,
                    options: Options(method: opts.method, headers: headers),
                  );

                  return handler.resolve(cloneReq);
                } else {
                  clearTokens();
                  return handler.next(error);
                }
              } catch (e) {
                debugPrint("Error on refresh token: ${e.toString()}");
                return handler.next(error);
              } finally {
                _isRefreshing = false;
              }
            } else {
              final completer = Completer<void>();
              _retryQueue.add(() async {
                final opts = error.requestOptions;
                final tempDio = Dio();
                tempDio.options = dio.options;

                final headers = Map<String, dynamic>.from(opts.headers)
                  ..['Authorization'] = 'Bearer $_accessToken';

                final cloneReq = await tempDio.request(
                  opts.path,
                  data: opts.data,
                  queryParameters: opts.queryParameters,
                  options: Options(method: opts.method, headers: headers),
                );

                handler.resolve(cloneReq);
                completer.complete();
              });

              return await completer.future;
            }
          } else {
            return handler.next(error);
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

  Future<bool> _refreshAccessToken() async {
    final dioForRefresh = Dio(
      BaseOptions(
        baseUrl: dio.options.baseUrl,
        connectTimeout: dio.options.connectTimeout,
        receiveTimeout: dio.options.receiveTimeout,
        responseType: dio.options.responseType,
      ),
    );

    try {
      final response = await dioForRefresh.post(
        _refreshTokenUrl,
        data: {'refresh_token': _refreshToken},
      );

      final result = _handleResponse(response, includeDataKey: false);
      if (result.isFailed) return false;

      final Map<String, dynamic> responseData = result.resultValue ?? {};

      final Map<String, dynamic>? tokenData = responseData["data"]['token'];

      if (tokenData == null) {
        debugPrint('tokenData is null');
        return false;
      }

      final newAccessToken = tokenData['accessToken'];
      final newRefreshToken = tokenData['refreshToken'];

      if (newAccessToken is String && newRefreshToken is String) {
        _accessToken = newAccessToken;
        _refreshToken = newRefreshToken;

        debugPrint('Token successfully refreshed: $_accessToken');
        return true;
      } else {
        debugPrint('Token parsing failed');
      }
    } catch (e) {
      debugPrint('Error refreshing token: $e');
    }

    return false;
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

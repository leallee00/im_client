part of http;

class BasicInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    DioUtils.cancelToken = options.cancelToken ?? CancelToken();
    if (AppUserInfo().uniToken.isNotEmpty) {
      options.headers['Authorization'] = AppUserInfo().uniToken;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioUtils.cancelToken = null;
    super.onResponse(response, handler);
  }
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.badResponse:
        String message = '';
        final String? content = err.response?.data?.toString();
        if ((content ?? '') != '') {
          try {
            final decode = jsonDecode(content!) as Map<String, dynamic>;
            message = decode['message'] as String;
          } catch (error) {
            message = error.toString();
          }
        }

        final String key = message;
        final int? status = err.response?.statusCode;
        if (status == null) {
          throw NetworkException(
            status: HttpStatus.networkConnectTimeoutError,
            message: err.message,
          );
        } else {
          switch (status) {
            case HttpStatus.unauthorized:
              throw AuthorizationException(
                key: key,
                status: status,
                message: message,
              );
            case HttpStatus.unprocessableEntity:
              throw ValidationException(
                key: key,
                status: status,
                message: message,
              );
            case HttpStatus.notFound:
              throw NotFoundException(
                key: key,
                status: status,
                message: message,
              );
            default:
              throw StatusException(key: key, status: status, message: message);
          }
        }
      case DioErrorType.cancel:
        DioUtils.cancelToken = null;
        throw CancelRequestException(
          status: HttpStatus.clientClosedRequest,
          message: err.toString(),
        );
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.badCertificate:
      case DioErrorType.connectionError:
      case DioErrorType.unknown:
        throw NetworkException(
          status: HttpStatus.networkConnectTimeoutError,
          message: err.message,
        );
    }
  }
}

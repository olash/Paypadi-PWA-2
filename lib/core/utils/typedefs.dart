import 'package:paypadi/core/api/exceptions/app_exception.dart'
    show AppException;
import 'package:paypadi/core/api/response/api_response.dart' show ApiResponse;
import 'package:paypadi/core/api/result.dart';

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureVoidResult = Future<Result<ApiResponse<void>, AppException>>;

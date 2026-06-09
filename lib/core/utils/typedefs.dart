import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureApiResultOf<T> = Future<Result<ApiResponse<T>, Exception>>;

typedef FutureResultListOf<T> = Future<Result<List<T>, Exception>>;

typedef FutureResultPaginatedListOf<T> =
    Future<Result<PaginatedListResponse<T>, Exception>>;

typedef FuturePaginatedApiOf<T> =
    Future<Result<ApiResponse<PaginatedListResponse<T>>, Exception>>;

typedef FutureVoidResult = Future<Result<void, Exception>>;

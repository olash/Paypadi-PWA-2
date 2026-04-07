import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureResultApiListOf<T> = Future<Result<List<T>, Exception>>;

typedef FutureResultPaginatedListOf<T> =
    Future<Result<PaginatedListResponse<T>, Exception>>;

typedef FutureVoidResult = Future<Result<void, Exception>>;

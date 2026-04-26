import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';

/// Optional hook called before any exception is wrapped.
/// Wire up your crash reporter (Sentry, Firebase, etc.) here.
///
/// Example:
///   AppException.logger = (ex, st) => Sentry.captureException(ex, stackTrace: st);
typedef ExceptionLogger =
    void Function(Object exception, StackTrace stackTrace);

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureResultListOf<T> = Future<Result<List<T>, Exception>>;

typedef FutureResultPaginatedListOf<T> =
    Future<Result<PaginatedListResponse<T>, Exception>>;

typedef FutureVoidResult = Future<Result<void, Exception>>;

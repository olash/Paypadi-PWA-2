import 'package:fpdart/fpdart.dart' show Either;
import 'package:paypadi/core/api/exceptions/server_exception.dart'
    show ServerException;
import 'package:paypadi/core/api/response/api_response.dart' show ApiResponse;

typedef FutureEitherResponseOf<T> =
    Future<Either<ApiResponse<T>, ServerException>>;

typedef FutureEitherVoidResponseOf<T> =
    Future<Either<ApiResponse<T?>, ServerException>>;

typedef FutureEitherOf<T> = Future<Either<T, ServerException>>;

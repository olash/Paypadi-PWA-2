import 'package:paypadi/core/api/result.dart';

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureVoidResult = Future<Result<void, Exception>>;

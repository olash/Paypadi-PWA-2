import 'package:paypadi/core/api/result.dart';

typedef FutureResultOf<T> = Future<Result<T, Exception>>;

typedef FutureResultListOf<T> = Future<Result<List<T>, Exception>>;

typedef FutureVoidResult = Future<Result<void, Exception>>;

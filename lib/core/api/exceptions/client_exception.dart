import 'package:paypadi/core/api/exceptions/app_exception.dart';

base class ClientException extends AppException {
  const ClientException({
    required this.message,
    this.cause,
    this.stackTrace,
  });

  final String message;

  /// The original exception that was wrapped, preserved for logging/crash reporters.
  final Object? cause;

  final StackTrace? stackTrace;

  @override
  String toString() => message;
}

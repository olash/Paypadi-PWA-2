import 'package:paypadi/core/api/exceptions/app_exception.dart';

base class ClientException extends AppException {
  const ClientException({required this.message});
  final String message;

  @override
  String toString() => message;
}

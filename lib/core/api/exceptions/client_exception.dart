import 'package:paypadi/core/api/exceptions/app_exception.dart';

final class ClientException extends AppException {
  const ClientException({required this.message});
  final String message;
  
  @override
  String toString() => "Client Exception: $message";
}

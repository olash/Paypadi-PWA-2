// ignore_for_file: public_member_api_docs, sort_constructors_first
// Package imports:

class LoginRequest {
  const LoginRequest({
    required this.phoneNumber,
    required this.password,
  });

  final String phoneNumber;
  final String password;

  Map<String, dynamic> toJson() => {
    'phone_number': phoneNumber,
    'password': password,
  };

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
  );

  @override
  String toString() =>
      'LoginRequest(phoneNumber: $phoneNumber, password: $password)';
}

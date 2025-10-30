// ignore_for_file: public_member_api_docs, sort_constructors_first
// Package imports:

class LoginPayload {
  const LoginPayload({
    required this.phoneNumber,
    required this.password,
  });

  final String phoneNumber;
  final String password;

  Map<String, dynamic> toJson() => {
    'phone_number': phoneNumber,
    'password': password,
  };

  factory LoginPayload.fromJson(Map<String, dynamic> json) => LoginPayload(
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
  );

  @override
  String toString() =>
      'LoginPayload(phoneNumber: $phoneNumber, password: $password)';
}

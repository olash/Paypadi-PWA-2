part of 'payloads.dart';

class RegisterUserPayloadBuilder {
  String? _phoneNumber;
  String? _firstName;
  String? _lastName;
  String? _password;
  String? _email;
  String? _role;
  String? _referredBy;

  RegisterUserPayloadBuilder phoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber.trim();
    return this;
  }

  RegisterUserPayloadBuilder firstName(String firstName) {
    _firstName = firstName.trim();
    return this;
  }

  RegisterUserPayloadBuilder lastName(String lastName) {
    _lastName = lastName.trim();
    return this;
  }

  RegisterUserPayloadBuilder password(String password) {
    _password = password;
    return this;
  }

  RegisterUserPayloadBuilder email(String? email) {
    _email = email?.trim();
    return this;
  }

  RegisterUserPayloadBuilder role(String? role) {
    _role = role?.trim();
    return this;
  }

  RegisterUserPayloadBuilder referredBy(String? referredBy) {
    _referredBy = referredBy?.trim();
    return this;
  }

  // Build with validation
  RegisterUserPayload build() {
    // Validate required fields
    if (_phoneNumber == null || _phoneNumber!.isEmpty) {
      throw ArgumentError('Phone number is required');
    }
    if (_firstName == null || _firstName!.isEmpty) {
      throw ArgumentError('First name is required');
    }
    if (_lastName == null || _lastName!.isEmpty) {
      throw ArgumentError('Last name is required');
    }
    if (_password == null || _password!.isEmpty) {
      throw ArgumentError('Password is required');
    }

    return RegisterUserPayload(
      phoneNumber: _phoneNumber!,
      firstName: _firstName!,
      lastName: _lastName!,
      password: _password!,
      email: _email?.isNotEmpty == true ? _email : null,
      role: _role?.isNotEmpty == true ? _role : null,
      referredBy: _referredBy?.isNotEmpty == true ? _referredBy : null,
    );
  }
}

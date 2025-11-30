// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'payloads.dart';

class RegisterPayloadBuilder {
  String? _phoneNumber;
  String? _firstName;
  String? _lastName;
  String? _password;
  String? _role;
  String? _cabNumber;
  String? _licensePlate;
  String? _driverLicenseNumber;
  String? _email;
  String? _referredBy;

  RegisterPayloadBuilder({
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? password,
    String? role,
    String? cabNumber,
    String? licensePlate,
    String? driverLicenseNumber,
    String? email,
    String? referredBy,
  }) : _phoneNumber = phoneNumber,
       _firstName = firstName,
       _lastName = lastName,
       _password = password,
       _role = role ?? "rider",
       _cabNumber = cabNumber,
       _licensePlate = licensePlate,
       _driverLicenseNumber = driverLicenseNumber,
       _email = email,
       _referredBy = referredBy;

  // Getters
  String? get phoneNumber => _phoneNumber;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get password => _password;
  String? get role => _role;
  String? get cabNumber => _cabNumber;
  String? get licensePlate => _licensePlate;
  String? get driverLicenseNumber => _driverLicenseNumber;
  String? get email => _email;
  String? get referredBy => _referredBy;

  // Setters with trimming
  set phoneNumber(String? value) {
    _phoneNumber = value?.trim();
  }

  set firstName(String? value) {
    _firstName = value?.trim();
  }

  set lastName(String? value) {
    _lastName = value?.trim();
  }

  set password(String? value) {
    _password = value;
  }

  set role(String? value) {
    _role = value?.trim() ?? "rider";
  }

  set cabNumber(String? value) {
    _cabNumber = value?.trim();
  }

  set licensePlate(String? value) {
    _licensePlate = value?.trim();
  }

  set driverLicenseNumber(String? value) {
    _driverLicenseNumber = value?.trim();
  }

  set email(String? value) {
    _email = value?.trim();
  }

  set referredBy(String? value) {
    _referredBy = value?.trim();
  }

  // Fluent setter methods (for method chaining)
  RegisterPayloadBuilder setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
    return this;
  }

  RegisterPayloadBuilder setFirstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

  RegisterPayloadBuilder setLastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

  RegisterPayloadBuilder setPassword(String password) {
    this.password = password;
    return this;
  }

  RegisterPayloadBuilder setRole(String role) {
    this.role = role;
    return this;
  }

  RegisterPayloadBuilder setCabNumber(String? cabNumber) {
    this.cabNumber = cabNumber;
    return this;
  }

  RegisterPayloadBuilder setLicensePlate(String? licensePlate) {
    this.licensePlate = licensePlate;
    return this;
  }

  RegisterPayloadBuilder setDriverLicenseNumber(String? driverLicenseNumber) {
    this.driverLicenseNumber = driverLicenseNumber;
    return this;
  }

  RegisterPayloadBuilder setEmail(String? email) {
    this.email = email;
    return this;
  }

  RegisterPayloadBuilder setReferredBy(String? referredBy) {
    this.referredBy = referredBy;
    return this;
  }

  // Build method that returns RegisterPayload
  RegisterPayload build() {
    return RegisterPayload(
      phoneNumber: _phoneNumber ?? '',
      firstName: _firstName ?? '',
      lastName: _lastName ?? '',
      password: _password ?? '',
      role: _role,
      cabNumber: _cabNumber,
      licensePlate: _licensePlate,
      driverLicenseNumber: _driverLicenseNumber,
      email: _email,
      referredBy: _referredBy,
    );
  }

  // Reset builder for reuse
  RegisterPayloadBuilder reset() {
    _phoneNumber = null;
    _firstName = null;
    _lastName = null;
    _password = null;
    _role = "rider";
    _cabNumber = null;
    _licensePlate = null;
    _driverLicenseNumber = null;
    _email = null;
    _referredBy = null;
    return this;
  }

  // Copy from existing payload
  RegisterPayloadBuilder fromPayload(RegisterPayload payload) {
    _phoneNumber = payload.phoneNumber;
    _firstName = payload.firstName;
    _lastName = payload.lastName;
    _password = payload.password;
    _role = payload.role;
    _cabNumber = payload.cabNumber;
    _licensePlate = payload.licensePlate;
    _driverLicenseNumber = payload.driverLicenseNumber;
    _email = payload.email;
    _referredBy = payload.referredBy;
    return this;
  }

  // toString for debugging
  @override
  String toString() {
    return 'RegisterPayloadBuilder(phoneNumber: $_phoneNumber, firstName: $_firstName, lastName: $_lastName, role: $_role, email: $_email, referredBy: $_referredBy, cabNumber: $_cabNumber, licensePlate: $_licensePlate, driverLicenseNumber: $_driverLicenseNumber)';
  }
}

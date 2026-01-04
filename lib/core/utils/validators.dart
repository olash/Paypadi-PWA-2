// Simple validators used across the app.
String? requiredValidator(String? text) {
  if (text == null || text.trim().isEmpty) return 'This field is required';

  return null;
}

String? pinCodeValidator(String? code) {
  if (code == null || code.trim().isEmpty) return 'Enter your PIN';

  final trimmed = code.trim();

  // Accept only 6-digit numeric PINs
  if (!RegExp(r'^\d{6}$').hasMatch(trimmed)) return 'Enter a valid 6-digit PIN';

  return null;
}

String? nameValidator(String? name) {
  if (name == null || name.trim().isEmpty) return 'Enter a name';

  final trimmed = name.trim();

  // Disallow spaces — only a single (singular) name is allowed.
  if (trimmed.contains(RegExp(r'\s'))) return 'Enter a single name (no spaces)';

  // Accept only ASCII letters. If you want to allow diacritics, we can expand this.
  final RegExp regex = RegExp(r'^[A-Za-z]+$');
  if (!regex.hasMatch(trimmed)) return 'Enter a valid name';

  return null;
}

String? otpValidator(String? otp) {
  if (otp == null || otp.trim().isEmpty) return 'Enter the OTP';
  final trimmed = otp.trim();

  // Accept 4 to 6 digit numeric OTPs (common lengths). Adjust if your app uses a different length.
  if (!RegExp(r'^\d{4,6}$').hasMatch(trimmed)) return 'Enter a valid OTP';

  return null;
}

String? phoneNumberValidator(String? phone) {
  // Validate Nigerian phone numbers only.
  // Acceptable formats:
  // - Local: 0XXXXXXXXXX (11 digits, e.g. 08031234567)
  // - International: +234XXXXXXXXXX or 234XXXXXXXXXX (13 digits without +, e.g. +2348031234567)

  if (phone == null || phone.trim().isEmpty) {
    return 'Enter a phone number';
  }

  // Remove common separators (spaces, dashes, parentheses)
  var normalized = phone.replaceAll(RegExp(r'[\s\-\(\)]'), '');

  // Strip leading + if present
  if (normalized.startsWith('+')) {
    normalized = normalized.substring(1);
  }

  // Conservatively accept international '00' prefix when it's followed by '234'
  // (e.g. 002348031234567). This avoids accidentally stripping leading zeros
  // from local numbers that legitimately start with '00'.
  if (normalized.startsWith('00') &&
      normalized.length > 2 &&
      normalized.substring(2).startsWith('234')) {
    normalized = normalized.substring(2);
  }

  // Local: starts with 0 and 11 digits total (e.g. 08031234567)
  final isAllDigits = RegExp(r'^\d+$').hasMatch(normalized);
  final localMatch =
      normalized.startsWith('0') && normalized.length == 11 && isAllDigits;
  // International without plus/prefix: starts with 234 and then 10 digits (e.g. 2348031234567)
  final intlMatch =
      normalized.startsWith('234') && normalized.length == 13 && isAllDigits;

  // For correct matching we expect either:
  // - normalized == '0' + 10 digits
  // - normalized == '234' + 10 digits
  // The regex above uses an explicit end anchor; ensure the string matches exactly.
  if (!localMatch && !intlMatch) {
    return 'Enter a valid number (e.g. 08031234567)';
  }

  return null;
}

String? plateNumberValidator(String? plate) {
  // Validate common Nigerian vehicle plate formats.
  // Common formats accepted (spaces or dashes allowed):
  // - ABC 123 DE (three letters, three digits, two letters)
  // - AB 123 CD  (two letters, three digits, two letters)

  if (plate == null || plate.trim().isEmpty) {
    return 'Enter a plate number';
  }

  // Disallow any spaces or non-alphanumeric characters in the input.
  // We expect a compact plate format like "ABC123DE" or "AB123CD".
  if (!RegExp(r'^[A-Za-z0-9]+$').hasMatch(plate)) {
    return 'Enter a valid Nigerian plate without spaces or symbols (e.g. ABC123DE)';
  }

  // Normalize to uppercase for pattern matching
  final normalized = plate.toUpperCase();

  // Accept either 3 letters + 3 digits + 2 letters (ABC123DE)
  // or 2 letters + 3 digits + 2 letters (AB123CD)
  final pattern1 = RegExp(r'^[A-Z]{3}\d{3}[A-Z]{2}$');
  final pattern2 = RegExp(r'^[A-Z]{2}\d{3}[A-Z]{2}$');

  if (!pattern1.hasMatch(normalized) && !pattern2.hasMatch(normalized)) {
    return 'Enter a valid Nigerian plate (e.g. ABC123DE)';
  }

  return null;
}

String? accountNumberValidator(String? accountNumber) {
  if (accountNumber == null || accountNumber.trim().isEmpty) {
    return 'Enter an account number';
  }
  final trimmed = accountNumber.trim();
  if (!RegExp(r'^\d{10}$').hasMatch(trimmed)) {
    return 'Account number must be exactly 10 digits';
  }
  return null;
}

// Simple validators used across the app.

String? nameValidator(String name) {
  final RegExp regex = RegExp(r'^[A-Za-z]+$');
  if (!regex.hasMatch(name)) {
    return 'Enter a name';
  }
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

  // Local: starts with 0 and 11 digits total (e.g. 08031234567)
  final isAllDigits = RegExp(r'^\d+$').hasMatch(normalized);
  final localMatch =
      normalized.startsWith('0') && normalized.length == 11 && isAllDigits;
  // International without plus: starts with 234 and then 10 digits (e.g. 2348031234567)
  final intlMatch =
      normalized.startsWith('234') && normalized.length == 13 && isAllDigits;

  // For correct matching we expect either:
  // - normalized == '0' + 10 digits
  // - normalized == '234' + 10 digits
  // The regex above uses an explicit end anchor; ensure the string matches exactly.
  if (!localMatch && !intlMatch) {
    return 'Enter a valid Nigerian phone number (e.g. 08031234567 or +2348031234567)';
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

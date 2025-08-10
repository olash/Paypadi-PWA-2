String obfuscateEmail(String email) {
  final emailRegex = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w+$");
  if (!emailRegex.hasMatch(email)) return email;

  final parts = email.split('@');
  if (parts.length != 2) return email;

  final username = parts[0];
  final domain = parts[1];

  final visible = username.length > 4 ? username.substring(0, 4) : username;
  final obfuscated = '*' * (username.length - visible.length);

  return '$visible$obfuscated@$domain';
}

String obfuscatePhoneNumber(String phoneNumber) {
  final phoneRegex = RegExp(r"^\+(\d{1,3})(\d+)$");
  final match = phoneRegex.firstMatch(phoneNumber);
  if (match == null) return phoneNumber;

  final countryCode = match.group(1)!;
  final rest = match.group(2)!;

  if (rest.length <= 3) return phoneNumber;

  final obfuscated = '*' * (rest.length - 3);
  final visible = rest.substring(rest.length - 3);

  return '+$countryCode$obfuscated$visible';
}

String formatAmount(int amount) {
  final formatted = amount.toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
    (Match m) => '${m[1]},',
  );
  return '$formatted.00';
}

String capitalizeFirstChar(String s) {
  if (s.isEmpty) return s;
  return s[0].toUpperCase() + s.substring(1);
}

String getDateAndTime(DateTime date) {
  final year = date.year.toString().padLeft(4, '0');
  final month = date.month.toString().padLeft(2, '0');
  final day = date.day.toString().padLeft(2, '0');
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  return '$year-$month-${day}_$hour:$minute';
}

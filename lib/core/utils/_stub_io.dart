// Stub dart:io Platform for web compilation.
// Web doesn't have dart:io, so conditional imports pull this file in instead.
// All properties return false — on web, isMobile checks are never meaningful.
class Platform {
  static bool get isAndroid => false;
  static bool get isIOS => false;
  static bool get isMacOS => false;
  static bool get isWindows => false;
  static bool get isLinux => false;
  static bool get isFuchsia => false;
  static String get operatingSystem => 'web';
}

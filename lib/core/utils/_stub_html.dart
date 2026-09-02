// Stub dart:html for mobile/native compilation.
// When compiling on mobile, dart:html is unavailable.
// Conditional imports pull this file in instead so receipt_service.dart
// compiles on all platforms. None of the stubs are ever called at runtime
// on non-web platforms due to the kIsWeb guard.

// ignore_for_file: avoid_classes_with_only_static_members

class Blob {
  Blob(List<dynamic> parts, [String? type]);
}

class Url {
  static String createObjectUrlFromBlob(Blob blob) => '';
  static void revokeObjectUrl(String url) {}
}

class Element {
  String href = '';
  String download = '';
  late _StyleProxy style;
  void click() {}
  void remove() {}
  void append(Element child) {}
}

class _StyleProxy {
  String display = '';
}

class AnchorElement extends Element {
  AnchorElement();
}

class _Document {
  Element createElement(String tag) => AnchorElement();
  Element? body;
}

final _document = _Document();
_Document get document => _document;

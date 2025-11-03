import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/data/repository/authentication_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@riverpod
Future<List<String>> bankList(Ref ref) async {
  try {
    final asset = await loadJsonFromAssets();

    // The JSON loader may return a Map with a 'data' key containing a list,
    // or the root may already be a list wrapped under 'data' by the loader.
    final dynamic raw = asset['data'] ?? asset['banks'] ?? asset['items'];

    if (raw is List) {
      final names = <String>[];
      for (final item in raw) {
        if (item is Map<String, dynamic>) {
          final name = item['name'];
          if (name is String && name.isNotEmpty) names.add(name);
        }
      }
      return names;
    }

    // If the structure is unexpected, return an empty list instead of throwing.
    return <String>[];
  } catch (_) {
    // On error, return an empty list to keep the provider safe for consumers.
    return <String>[];
  }
}

@riverpod
class AuthController extends _$AuthController {
  // Some static analyzers warn if the field is unused in this file; it's
  // populated in build() and used by controller methods. Silence unused
  // field warnings here to keep the generated code clean.
  // ignore: unused_field
  late final AuthenticationRepo _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authRepoProvider);
  }
}

import 'package:package_info_plus/package_info_plus.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_version_controller.g.dart';

@riverpod
class AppVersionController extends _$AppVersionController {
  @override
  FutureOr<PackageInfo> build() {
    final service = ref.read(versionServiceProvider);
    return service.getAppInformation();
  }
}

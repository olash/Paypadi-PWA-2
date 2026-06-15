import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.dart';
part 'settings_controller.freezed.dart';
part 'settings_controller.g.dart';

@riverpod
class SettingsController extends _$SettingsController {
  @override
  FutureOr<SettingsState> build() async {
    final localCache = await ref.watch(localCacheProvider.future);
    final biometricsEnabled = await localCache.get<bool?>(CacheKeys.biometrics);
    final darkModeIsEnabled = await localCache.get<bool?>(CacheKeys.darkMode);

    return SettingsState(
      biometricsIsEnabled: biometricsEnabled,
      darkModeIsEnabled: darkModeIsEnabled,
    );
  }
}

//  final localCacheAsync = ref.watch(localCacheProvider);
//     final biometricsIsEnabled = useState<bool>(false);
//     final isDarkMode = useState<bool>(false);

//     // Prevents writing initial `false` defaults back to cache before the
//     // persisted values have been read from it.
//     final isInitialized = useRef<bool>(false);

//     useEffect(() {
//       final localCache = localCacheAsync.valueOrNull;
//       if (localCache == null || isInitialized.value) return null;

//       Future(() async {
//         biometricsIsEnabled.value =
//             await localCache.get<bool>(CacheKeys.biometrics) ?? false;
//         // isDarkMode.value =
//         //     await localCache.get<bool>(CacheKeys.isDarkMode) ?? false;
//         isInitialized.value = true;
//       });

//       return null;
//     }, [localCacheAsync]);

//     // Persist the biometrics preference whenever it changes.
//     // isInitialized guard prevents overwriting the cache before the load
//     // effect has populated the initial value.
//     useEffect(() {
//       if (!isInitialized.value) return null;
//       final localCache = localCacheAsync.valueOrNull;
//       if (localCache == null) return null;

//       Future(
//         () => localCache.save(
//           key: CacheKeys.biometrics,
//           value: biometricsIsEnabled.value,
//         ),
//       );
//       return null;
//     }, [biometricsIsEnabled.value]);

//     // Persist the dark-mode preference whenever it changes.
//     // useEffect(() {
//     //   if (!isInitialized.value) return null;
//     //   final localCache = localCacheAsync.valueOrNull;
//     //   if (localCache == null) return null;
//     //
//     //   Future(
//     //     () => localCache.save(
//     //       key: CacheKeys.isDarkMode,
//     //       value: isDarkMode.value,
//     //     ),
//     //   );
//     //   return null;
//     // }, [isDarkMode.value]);

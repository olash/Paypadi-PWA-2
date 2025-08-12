import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/settings/presentation/widgets/setting_tile.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localCache = ref.read(localCacheProvider);
    final biometricsIsEnabled = useState<bool>(
      localCache.getFromCache(CacheKeys.enabledBiometrics) ?? false,
    );
    final isDarkMode = useState<bool>(
      localCache.getFromCache(CacheKeys.isDarkMode) ?? false,
    );

    useEffect(() {
      // Save biometricsIsEnabled.value to cache whenever it changes
      Future<void> saveBiometricsSetting() async {
        await localCache.saveToCache(
          key: CacheKeys.enabledBiometrics,
          value: biometricsIsEnabled.value,
        );
      }

      saveBiometricsSetting();
      return null;
    }, [biometricsIsEnabled.value]);

    useEffect(() {
      // Save isDarkMode.value to cache whenever it changes
      Future<void> saveDarkModeSetting() async {
        await localCache.saveToCache(
          key: CacheKeys.isDarkMode,
          value: isDarkMode.value,
        );
      }

      saveDarkModeSetting();
      return null;
    }, [isDarkMode.value]);

    return AppScaffold(
      leftPadding: 0,
      rightPadding: 0,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: context.textTheme.headlineSmall?.copyWith(
            letterSpacing: (-.43),
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingTile(
              name: "Profile",
              icon: Iconsax.profile_circle_outline,
              onTap: () => ref.read(appRouterProvider).push(ProfileRoute()),
            ),
            SettingTile(
              name: "Notification Preferences",
              icon: Iconsax.notification_outline,
              onTap:
                  () => ref.read(appRouterProvider).push(NotificationsRoute()),
            ),
            SettingTile(
              name: "Change Password",
              showTrailingIcon: false,
              icon: Iconsax.lock_1_outline,
              onTap:
                  () => ref.read(appRouterProvider).push(ChangePasswordRoute()),
            ),
            SettingTile(
              name: "Change Pin",
              showTrailingIcon: false,
              icon: Iconsax.password_check_outline,
              onTap: () => ref.read(appRouterProvider).push(ChangePinRoute()),
            ),
            SettingTile(
              name: "Referral",
              showTrailingIcon: false,
              icon: Iconsax.alarm_outline,
              onTap: () => ref.read(appRouterProvider).push(ReferralRoute()),
            ),
            SettingTile(
              name: "Theme",
              icon: Iconsax.colorfilter_outline,
              onTap: () => ref.read(appRouterProvider).push(ChangeThemeRoute()),
            ),
            SettingTileWithSwitch(
              name: "Enable Biometrics",
              icon: IonIcons.finger_print,
              switchValue: biometricsIsEnabled.value,
              onChanged: (value) => biometricsIsEnabled.value = value,
            ),
            SettingTileWithSwitch(
              name: "Dark Mode",
              icon: Iconsax.moon_outline,
              switchValue: isDarkMode.value,
              onChanged: (value) => isDarkMode.value = value,
            ),
            SettingTile(
              name: "Help & Support",
              icon: Iconsax.support_outline,
              onTap: () => ref.read(appRouterProvider).push(SupportRoute()),
            ),
            SettingTile(
              name: "Legal & Policies",
              icon: Iconsax.judge_outline,
              onTap: () => ref.read(appRouterProvider).push(LegalRoute()),
            ),
            SettingTile(
              name: "Log out",
              showTrailingIcon: false,
              icon: Iconsax.logout_1_outline,
              onTap:
                  () => ref
                      .read(appRouterProvider)
                      .pushAndPopUntil(
                        LoginRoute(),
                        predicate: (route) => route.settings.name == "/login",
                      ),
            ),
          ],
        ),
      ),
    );
  }
}

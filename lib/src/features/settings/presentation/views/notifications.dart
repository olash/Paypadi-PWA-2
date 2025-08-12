import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/src/features/settings/presentation/widgets/setting_tile.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class NotificationsScreen extends HookConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enablePushNotifications = useState<bool>(false);
    final enableEmailNotifications = useState<bool>(false);

    return AppScaffold(
      title: "Notifications",
      child: Column(
        children: [
          SettingTileWithSwitch(
            name: "Push Notifications",
            icon: Iconsax.notification_1_outline,
            switchValue: enablePushNotifications.value,
            onChanged: (value) => enablePushNotifications.value = value,
          ),
          SettingTileWithSwitch(
            name: "Email Notifications",
            icon: Iconsax.sms_notification_outline,
            switchValue: enableEmailNotifications.value,
            onChanged: (value) => enableEmailNotifications.value = value,
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class NotificationsScreen extends HookConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enablePushNotifications = useState<bool>(false);
    final enableEmailNotifications = useState<bool>(false);

    return const AppScaffold(
      title: 'Notifications',
      child: Column(),
    );
  }
}

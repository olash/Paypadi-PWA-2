import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navTracker = useState<int>(0);

    return AppScaffold(
      showAppBar: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navTracker.value,
        onTap: (value) {
          navTracker.value = value;
          switch (value) {
            case 0:
              unawaited(context.router.push(const DashboardRoute()));
              break;
            case 1:
              unawaited(context.router.push(const TransactionHistoryRoute()));
              break;
            case 2:
              unawaited(context.router.push(const SettingsRoute()));
              break;
            default:
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Transfer',
            icon: Icon(Icons.arrow_downward_rounded),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      child: const AutoRouter(),
    );
  }
}

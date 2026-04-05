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
              context.router.push(HomeRoute());
              break;
            case 1:
              context.router.push(TransactionHistoryRoute());
              break;
            case 2:
              context.router.push(SettingsRoute());
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(
            label: "Transfer",
            icon: Icon(Icons.arrow_downward_rounded),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      child: AutoRouter(),
    );
  }
}

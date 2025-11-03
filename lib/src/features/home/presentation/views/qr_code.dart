import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class QrCodeScreen extends HookConsumerWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      showAppBar: false,
      child: Column(
        children: [
          MobileScanner(
            onDetect: (barcodes) {
              
            },
          )
        ],
      ),
    );
  }
}

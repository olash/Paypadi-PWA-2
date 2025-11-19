import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/service_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart';

class LoadingIndicator extends ConsumerWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color primaryColor = ref.watch(appPrimaryColorProvider);

    return Center(
      child: LoadingAnimationWidget.hexagonDots(
        color: primaryColor,
        size: Values.v36,
      ),
    );
  }
}

/// Shows a modal loading overlay that blocks user interaction
/// Returns a function to dismiss the loading overlay
void showLoadingOverlay(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    enableDrag: false,
    isDismissible: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      final Color primaryColor = ref.watch(appPrimaryColorProvider);
      return PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.white.withValues(alpha: .15),
          child: Center(
            child: LoadingAnimationWidget.threeArchedCircle(
              color: primaryColor,
              size: Values.v64,
            ),
          ),
        ),
      );
    },
  );
}

void dismissLoadingOverlay(BuildContext context) {
  if (Navigator.of(context).canPop()) {
    Navigator.of(context).pop();
  }
}

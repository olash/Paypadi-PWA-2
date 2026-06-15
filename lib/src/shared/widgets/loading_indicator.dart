import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/src/shared/controllers/app_loading/app_loading_controller.dart';

class AppLoadingOverlay extends ConsumerWidget {
  const AppLoadingOverlay({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(appLoadingControllerProvider);

    return Stack(
      children: [
        child,
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: isLoading
              ? const _LoadingBarrier(key: ValueKey('loading'))
              : const SizedBox.shrink(key: ValueKey('idle')),
        ),
      ],
    );
  }
}

class _LoadingBarrier extends ConsumerWidget {
  const _LoadingBarrier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primaryColor = ref.watch(appPrimaryColorProvider);

    return AbsorbPointer(
      child: ColoredBox(
        color: AppColors.black.withValues(alpha: .3),
        child: Center(
          child: LoadingAnimationWidget.threeArchedCircle(
            color: primaryColor,
            size: Values.v64,
          ),
        ),
      ),
    );
  }
}

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

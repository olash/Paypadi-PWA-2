import 'dart:async' show Completer;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
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

// Track active overlays to prevent multiple overlays
final Map<Object, Completer<void>> _activeOverlays = {};

/// Shows a modal loading overlay that blocks user interaction
/// Returns a function to dismiss the loading overlay safely
VoidCallback? showLoadingOverlay(BuildContext context, WidgetRef ref) {
  // Use hashCode as a safer key instead of BuildContext directly
  final contextKey = context.hashCode;

  // Prevent multiple overlays on the same context
  if (_activeOverlays.containsKey(contextKey)) return null;

  final Completer<void> completer = Completer<void>();
  _activeOverlays[contextKey] = completer;

  showModalBottomSheet<void>(
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
  ).then((_) {
    // Clean up when modal is dismissed - no BuildContext usage
    _activeOverlays.remove(contextKey);
    if (!completer.isCompleted) {
      completer.complete();
    }
  });

  // Return safe dismiss function
  return () {
    if (_activeOverlays.containsKey(contextKey) &&
        !completer.isCompleted &&
        Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
      _activeOverlays.remove(contextKey);
      completer.complete();
    }
  };
}

void dismissLoadingOverlay(BuildContext context) {
  final contextKey = context.hashCode;

  if (_activeOverlays.containsKey(contextKey) &&
      Navigator.of(context).canPop()) {
    Navigator.of(context).pop();
    _activeOverlays.remove(contextKey);

    // Complete the completer if it exists
    final completer = _activeOverlays[contextKey];
    if (completer != null && !completer.isCompleted) {
      completer.complete();
    }
  }
}

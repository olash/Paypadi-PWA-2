import 'dart:async';

import 'package:paypadi/core/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  static const _autoAdvanceInterval = Duration(seconds: 3);
  static final _keys = onboardingStoryAndAsset.keys.toList();
  static final _values = onboardingStoryAndAsset.values.toList();

  static int get pageCount => onboardingStoryAndAsset.length;
  static List<String> get keys => _keys;
  static List<String> get values => _values;

  @override
  int build() {
    final timer = Timer.periodic(_autoAdvanceInterval, (_) => _advance());
    ref.onDispose(timer.cancel);
    return 0;
  }

  void _advance() {
    state = (state + 1) % pageCount;
  }

  void onPageChanged(int index) => state = index;
}

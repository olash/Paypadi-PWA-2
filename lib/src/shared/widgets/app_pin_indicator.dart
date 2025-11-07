import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show HookConsumerWidget, WidgetRef;
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart';

class AppPinIndicator extends HookConsumerWidget {
  const AppPinIndicator({
    super.key,
    this.pinLength = 4,
    required this.text,
  });

  final String text;
  final int pinLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicators = useState<List<bool>>(
      List<bool>.generate(pinLength, (index) => false),
    );

    useEffect(() {
      // Create a new list to ensure proper state updates
      final newIndicators = List<bool>.filled(pinLength, false);

      // Fill indicators up to current text length
      for (int i = 0; i < text.length && i < pinLength; i++) {
        newIndicators[i] = true;
      }

      // Only update if changed to prevent unnecessary rebuilds
      if (!listEquals(indicators.value, newIndicators)) {
        indicators.value = newIndicators;
      }

      return null;
    }, [text]);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < pinLength; i++)
          Padding(
            padding: EdgeInsets.only(right: i == pinLength - 1 ? 0 : 16),
            child: AnimatedContainer(
              height: Values.v16,
              width: Values.v16,
              duration: Durations.medium4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indicators.value[i]
                    ? ref.watch(appPrimaryColorProvider)
                    : AppColors.white,
                border: Border.all(
                  color: ref.watch(appPrimaryColorProvider),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

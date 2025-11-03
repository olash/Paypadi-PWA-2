import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appPrimaryColorProvider;
import 'package:paypadi/core/utils/extensions.dart';

class AppKeypad extends ConsumerStatefulWidget {
  const AppKeypad({
    super.key,
    this.padding,
    this.onSubmit,
    this.onChanged,
    this.onBiometricKeyPressed,
    this.pinLength = 4,
    this.showBiometric = false,
  });

  final int pinLength;
  final bool showBiometric;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onBiometricKeyPressed;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChanged;

  @override
  ConsumerState<AppKeypad> createState() => _AppKeypadState();
}

class _AppKeypadState extends ConsumerState<AppKeypad> {
  late String _pin;

  @override
  void initState() {
    super.initState();
    _pin = '';
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: kAppKeyPadKeys.length,
      padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 24),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.4,
        mainAxisSpacing: 14,
        crossAxisSpacing: 36,
      ),
      itemBuilder: (context, index) =>
          buildKeyButton(context, kAppKeyPadKeys[index]),
    );
  }

  void onTap(String key) {
    HapticFeedback.lightImpact();

    // Calls [onBiometricKeyPressed] if keypad shows biometric button
    if (widget.showBiometric && key == '.') {
      widget.onBiometricKeyPressed?.call();
      return;
    }

    // Handle backspace
    if (key == 'x') {
      if (_pin.isNotEmpty) {
        setState(() {
          _pin = _pin.substring(0, _pin.length - 1);
          widget.onChanged?.call(_pin);
        });
      }
      return;
    }

    // Handle numeric input
    if (_pin.length < widget.pinLength && key != '.') {
      setState(() {
        _pin += key;
        widget.onChanged?.call(_pin);
        // Auto-submit when PIN is complete
        if (_pin.length == widget.pinLength) {
          widget.onSubmit?.call(_pin);
        }
      });
    }
  }

  Widget buildKeyButton(BuildContext context, String key) {
    return InkWell(
      onTap: (key == "." && !widget.showBiometric) ? null : () => onTap(key),
      customBorder: CircleBorder(),
      splashColor: ref.watch(appPrimaryColorProvider).withValues(alpha: .1),
      child: Center(
        child: switch (key) {
          "x" => Icon(EvaIcons.backspace_outline, size: 32),
          "." => switch (widget.showBiometric) {
            true => Icon(IonIcons.finger_print, size: 42),
            false => SizedBox(),
          },
          _ => Text(key, style: context.textTheme.headlineSmall),
        },
      ),
    );
  }
}

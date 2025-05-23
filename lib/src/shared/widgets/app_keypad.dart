import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:paypadi/config/gen/colors.gen.dart';

class AppKeypad extends StatelessWidget {
  const AppKeypad({
    super.key,
    this.showBiometric = false,
    this.pinLength = 4,
    this.onBiometricKeyPressed,
    this.onChanged,
    this.onSubmit,
  });

  final int pinLength;
  final bool showBiometric;
  final VoidCallback? onBiometricKeyPressed;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;

  @override
  Widget build(BuildContext context) {
    String transactionPin = '';

    final List<String> keys = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.',
      '0',
      'x',
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: keys.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.1,
        mainAxisSpacing: 16,
        crossAxisSpacing: 40,
      ),
      itemBuilder: (context, index) => buildKeyButton(keys[index]),
    );
  }

  void onTap(String text) {
    HapticFeedback.lightImpact();

    if (text == 'x') {
    } else if (text == '') {}
  }

  Widget buildKeyButton(String key) {
    // if (key.isEmpty) {
    //   return GestureDetector(
    //     onTap: widget.onBiometricKeyPressed,
    //     child: SvgPicture.asset(Assets.svgs.scan),
    //   );
    // }
    return InkWell(
      onTap: () {},
      customBorder: CircleBorder(),
      splashColor: AppColors.primaryFocused.withValues(alpha: .1),
      child: Center(
        child: switch (key) {
          "x" => Icon(Icons.backspace_outlined),
          _ => Text(key),
        },
      ),
    );
  }
}

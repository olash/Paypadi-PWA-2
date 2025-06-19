import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

class SettingTile extends HookWidget {
  const SettingTile({
    super.key,
    this.onTap,
    this.onChanged,
    required this.name,
    required this.icon,
    this.showTrailingIcon = true,
  });

  final String name;
  final IconData? icon;
  final bool showTrailingIcon;
  final VoidCallback? onTap;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final isActivated = useState<bool>(false);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Icon(icon, size: 24),
            16.0.horizontalSpacing,
            Expanded(
              child: Text(
                name,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kVeryTightLetterSpacing,
                ),
              ),
            ),
            if (onChanged != null)
              SizedBox(
                height: 40,
                width: 40,
                child: Switch.adaptive(
                  value: isActivated.value,
                  onChanged: (value) {
                    isActivated.value = value;
                    onChanged?.call(value);
                  },
                ),
              ),
            if (showTrailingIcon) Icon(Iconsax.arrow_right_3_outline),
          ],
        ),
      ),
    );
  }
}

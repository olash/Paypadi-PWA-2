import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    required this.name,
    required this.icon,
    super.key,
    this.onTap,
    this.showTrailingIcon = true,
  });

  final String name;
  final IconData? icon;
  final bool showTrailingIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Icon(icon, size: 24),
            Values.v16.horizontalSpacing,
            Expanded(
              child: Text(
                name,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kVeryTightLetterSpacing,
                ),
              ),
            ),
            if (showTrailingIcon) const Icon(Iconsax.arrow_right_3_outline),
          ],
        ),
      ),
    );
  }
}

class SettingTileWithSwitch extends StatelessWidget {
  const SettingTileWithSwitch({
    required this.name,
    required this.icon,
    required this.switchValue,
    required this.onChanged,
    super.key,
  });

  final String name;
  final IconData? icon;
  final bool switchValue;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          Icon(icon, size: 24),
          Values.v16.horizontalSpacing,
          Expanded(
            child: Text(
              name,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w400,
                letterSpacing: kVeryTightLetterSpacing,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: Switch.adaptive(value: switchValue, onChanged: onChanged),
          ),
        ],
      ),
    );
  }
}

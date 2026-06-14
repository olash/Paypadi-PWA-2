import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    required this.name,
    this.icon,
    this.onTap,
    this.showTrailing = true,
    super.key,
  }) : switchValue = null,
       onChanged = null;

  const SettingTile.switchTile({
    required this.name,
    required this.switchValue,
    required this.onChanged,
    this.icon,
    super.key,
  }) : onTap = null,
       showTrailing = false;

  final String name;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool showTrailing;
  final bool? switchValue;
  final ValueChanged<bool>? onChanged;

  bool get _isSwitch => switchValue != null && onChanged != null;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w400,
      letterSpacing: kVeryTightLetterSpacing,
    );

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: _isSwitch ? null : onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Values.v16,
            vertical: Values.v20,
          ),
          child: Row(
            children: [
              if (icon != null) ...[icon!, Values.v16.horizontalSpace],
              Expanded(child: Text(name, style: textStyle)),
              if (_isSwitch)
                Switch.adaptive(
                  value: switchValue!,
                  onChanged: onChanged,
                )
              else if (showTrailing)
                const Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

// class SettingTile extends StatelessWidget {
//   const SettingTile({
//     required this.name,
//     this.icon,
//     super.key,
//     this.onTap,
//     this.showTrailingIcon = true,
//   });

//   const SettingTile.click({
//     required this.name,
//     this.icon,

//     super.key,
//   });

//   final String name;
//   final Widget? icon;
//   final bool? showTrailingIcon;
//   final VoidCallback? onTap;

//   final bool switchValue;
//   final ValueChanged<bool> onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//         child: Row(
//           children: [
//             ?icon,
//             Values.v16.horizontalSpace,
//             Expanded(
//               child: Text(
//                 name,
//                 style: context.textTheme.titleMedium?.copyWith(
//                   fontWeight: FontWeight.w400,
//                   letterSpacing: kVeryTightLetterSpacing,
//                 ),
//               ),
//             ),
//             // if (showTrailingIcon) const Icon(Iconsax.arrow_right_3_outline),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SettingTileWithSwitch extends StatelessWidget {
//   const SettingTileWithSwitch({
//     required this.name,
//     required this.icon,
//     required this.switchValue,
//     required this.onChanged,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//       child: Row(
//         children: [
//           Icon(icon, size: 24),
//           Values.v16.horizontalSpace,

//           Expanded(
//             child: Text(
//               name,
//               style: context.textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.w400,
//                 letterSpacing: kVeryTightLetterSpacing,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 40,
//             width: 40,
//             child: Switch.adaptive(value: switchValue, onChanged: onChanged),
//           ),
//         ],
//       ),
//     );
//   }
// }

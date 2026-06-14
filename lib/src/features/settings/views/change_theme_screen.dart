import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/controllers/app_color/app_color_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ChangeThemeScreen extends HookConsumerWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColor = ref.watch(colorIndexProvider);

    // useEffect(() {
    //   Timer? debounceTimer;
    //   debounceTimer = Timer(
    //     const Duration(milliseconds: 600),
    //     () => ref
    //         .read(colorIndexProvider.notifier)
    //         .setColorIndex(currentColor.value),
    //   );
    //   return () => debounceTimer?.cancel();
    // }, [currentColor.value]);

    return AppScaffold(
      title: 'Theme',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v24.verticalSpace,
          Text(
            'Customize to your preferred theme colour',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v16.verticalSpace,
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: BorderRadius.circular(Values.v12),
              border: Border.all(color: AppColors.themeBorderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < availableColors.length; i++)
                  _ThemeColorWidget(
                    color: availableColors[i],
                    isCurrent: currentColor.value == i,
                    // onTap: () => currentColor.value = i,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeColorWidget extends StatelessWidget {
  const _ThemeColorWidget({
    required this.color,
    required this.isCurrent,
  }) : onTap = null;

  final Color color;
  final bool isCurrent;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Durations.medium4,
        width: Values.v48,
        height: Values.v48,
        margin: const EdgeInsets.only(right: Values.v12),
        decoration: ShapeDecoration(
          color: color,
          shape: CircleBorder(
            side: isCurrent
                ? const BorderSide(width: Values.v2)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}

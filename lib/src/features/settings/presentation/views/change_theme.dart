import 'dart:async' show Timer;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';


@RoutePage()
class ChangeThemeScreen extends HookConsumerWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localCache = ref.watch(localCacheProvider);
    final currentColor = useState<int>(
      localCache.getFromCache(CacheKeys.colorTheme) ?? 0,
    );

    useEffect(() {
      Timer? debounceTimer;
      debounceTimer = Timer(
        const Duration(milliseconds: 400),
        () => ref
            .read(colorIndexNotifierProvider.notifier)
            .setColorIndex(currentColor.value),
      );
      return () => debounceTimer?.cancel();
    }, [currentColor.value]);

    return AppScaffold(
      title: "Theme",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          useSpaceOf24.verticalSpacing,
          Text(
            "Customize to your preferred theme colour",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          useSpaceOf16.verticalSpacing,
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: BorderRadius.circular(useSpaceOf12),
              border: Border.all(color: AppColors.themeBorderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < availableColors.length; i++)
                  _ThemeColorWidget(
                    color: availableColors[i],
                    isCurrent: currentColor.value == i,
                    onTap: () => currentColor.value = i,
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
    this.onTap,
    required this.color,
    required this.isCurrent,
  });

  final Color color;
  final bool isCurrent;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Durations.medium4,
        width: 40,
        height: 40,
        margin: EdgeInsets.only(right: useSpaceOf12),
        decoration: ShapeDecoration(
          color: color,
          shape: CircleBorder(
            side:
                isCurrent
                    ? BorderSide(color: AppColors.black, width: 3)
                    : BorderSide.none,
          ),
        ),
      ),
    );
  }
}

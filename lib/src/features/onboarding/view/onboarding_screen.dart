import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/onboarding/controller/onboarding_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    // Animate to the new page whenever the controller advances.
    ref.listen(onboardingControllerProvider, (previous, next) {
      if (!pageController.hasClients) return;

      final isRestart =
          previous == OnboardingController.pageCount - 1 && next == 0;

      if (isRestart) {
        pageController.jumpToPage(0);
      } else {
        pageController.animateToPage(
          next,
          duration: Durations.medium3,
          curve: Curves.easeInOut,
        );
      }
    });

    final currentPage = ref.watch(onboardingControllerProvider);
    final primaryColor = ref.watch(appPrimaryColorProvider);

    return AppScaffold(
      showAppBar: false,
      topPadding: kTopPadding,
      bottomPadding: kBottomPadding,
      child: Column(
        spacing: Values.v12,
        children: [
          Flexible(
            child: PageView.builder(
              controller: pageController,
              itemCount: OnboardingController.pageCount,
              onPageChanged: ref
                  .read(onboardingControllerProvider.notifier)
                  .onPageChanged,
              itemBuilder: (context, index) => _OnboardingStory(
                text: OnboardingController.keys[index],
                imagePath: OnboardingController.values[index],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              OnboardingController.pageCount,
              (index) => AnimatedContainer(
                height: Values.v6,
                duration: animatedFooDuration,
                width: currentPage == index ? Values.v36 : Values.v6,
                margin: const EdgeInsets.only(right: Values.v4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Values.v24.r),
                  color: currentPage == index
                      ? primaryColor
                      : AppColors.unselectedIndicator,
                ),
              ),
            ),
          ),
          Values.v24.verticalSpace,
          FilledButton(
            onPressed: () {
              ref.read(appRouterProvider).push(const CreateAccountRoute());
              ref.invalidate(onboardingControllerProvider);
            },
            child: const Text('Create Account'),
          ),
          OutlinedButton(
            onPressed: () {
              ref.read(appRouterProvider).push(const SignInRoute());
              ref.invalidate(onboardingControllerProvider);
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}

class _OnboardingStory extends StatelessWidget {
  const _OnboardingStory({required this.text, required this.imagePath});
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: context.screenHeight * .5,
        ),
        Values.v12.verticalSpace,
        Text(
          text,
          textAlign: TextAlign.center,
          style: context.textTheme.headlineSmall,
        ),
      ],
    );
  }
}

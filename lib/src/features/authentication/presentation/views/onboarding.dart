import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OnboardingScreen extends HookConsumerWidget {
  OnboardingScreen({super.key});

  final List<String> _onboardingText = [
    "Pay Seamlessly with your wallet—No More Change Wahala!",
    "Exact Payments, No More Change Drama!",
    "Your ‘Last Card’ Just Got Smarter",
  ];

  final List<String> _onboardingItems = [
    AppAssets.images.storyOne.path,
    AppAssets.images.storyTwo.path,
    AppAssets.images.storyThree.path,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController pageController = usePageController();
    final ValueNotifier<int> currentImg = useState<int>(0);

    return AppScaffold(
      topPadding: kTopPadding,
      bottomPadding: kBottomPadding,
      child: Column(
        spacing: 12,
        children: [
          Flexible(
            child: PageView.builder(
              controller: pageController,
              itemCount: _onboardingItems.length,
              onPageChanged: (value) => currentImg.value = value,
              itemBuilder: (context, index) {
                return _OnboardingStory(
                  text: _onboardingText[index],
                  imagePath: _onboardingItems[index],
                );
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children:
                _onboardingItems
                    .map(
                      (img) => AnimatedContainer(
                        height: 5,
                        duration: Durations.medium4,
                        width:
                            currentImg.value == _onboardingItems.indexOf(img)
                                ? 40
                                : 5,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color:
                              currentImg.value == _onboardingItems.indexOf(img)
                                  ? ref.watch(appPrimaryProvider)
                                  : AppColors.unselectedIndicator,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    )
                    .toList(),
          ),
          useSpaceOf24.verticalSpacing,
          FilledButton(
            onPressed: () {
              ref
                  .read(localCacheProvider)
                  .saveToCache(key: CacheKeys.viewedOnboarding, value: true);
              context.router.push(CreateAccountRoute());
            },
            child: Text("Create Account"),
          ),
          OutlinedButton(
            onPressed: () {
              ref
                  .read(localCacheProvider)
                  .saveToCache(key: CacheKeys.viewedOnboarding, value: true);
              context.router.push(LoginRoute());
            },
            child: Text("Sign In"),
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
        Image.asset(imagePath),
        if (imagePath == AppAssets.images.storyOne.path) 78.0.verticalSpacing,
        12.0.verticalSpacing,
        Text(
          text,
          textAlign: TextAlign.center,
          style: context.textTheme.headlineSmall,
        ),
      ],
    );
  }
}

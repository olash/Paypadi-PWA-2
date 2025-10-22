import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ReferralScreen extends HookConsumerWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: "Referrals",
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: useSpaceOf24),
        child: AppCard(
          cardColor: AppColors.referralCardColor,
          padding: EdgeInsets.all(useSpaceOf16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Refer a Friend",
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
              Text(
                "Share your referral link with others to get one month of Paypadi free!",
                style: context.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
              useSpaceOf8.verticalSpacing,
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: useSpaceOf8,
                  horizontal: useSpaceOf10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.black.withValues(alpha: .2),
                  borderRadius: BorderRadius.circular(useSpaceOf10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SUT000000694",
                      style: context.textTheme.labelSmall?.copyWith(
                        color: AppColors.white,
                        letterSpacing: kZeroLetterSpacing,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: useSpaceOf4,
                          horizontal: useSpaceOf8,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white.withValues(alpha: .3),
                          borderRadius: BorderRadius.circular(useSpaceOf10),
                        ),
                        child: Text(
                          "Copy",
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.white,
                            letterSpacing: kZeroLetterSpacing,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              useSpaceOf10.verticalSpacing,
              Container(
                width: context.screenWidth,
                padding: EdgeInsets.all(useSpaceOf10),
                decoration: BoxDecoration(
                  color: ref.read(appPrimaryProvider),
                  borderRadius: BorderRadius.circular(useSpaceOf10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Signed up",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: kZeroLetterSpacing,
                      ),
                    ),
                    Text(
                      "0",
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: kZeroLetterSpacing,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

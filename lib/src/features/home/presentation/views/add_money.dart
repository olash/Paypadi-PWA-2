import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appPrimaryProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class AddMoneyScreen extends HookConsumerWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: "Add money",
      child: Padding(
        padding: EdgeInsets.only(top: Values.v32),
        child: AppCard(
          padding: EdgeInsets.all(Values.v16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Text(
                "Available Balance",
                style: context.textTheme.bodyLarge?.copyWith(
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
              Values.v16.verticalSpacing,
              Text(
                "Account Number",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Text(
                "Available Balance",
                style: context.textTheme.bodyLarge?.copyWith(
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
              Values.v12.verticalSpacing,
              Row(
                spacing: Values.v12,
                children: [
                  FilledButton(
                    onPressed: () {},
                    style: context.filledButtonTheme.style?.copyWith(
                      fixedSize: WidgetStatePropertyAll(kButtonMediumSize),
                      foregroundColor: WidgetStatePropertyAll(
                        ref.watch(appPrimaryProvider),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        ref.watch(appPrimaryProvider).withAlpha(20),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          side: BorderSide(
                            color: ref.watch(appPrimaryProvider),
                          ),
                          borderRadius: BorderRadiusGeometry.circular(
                            Values.v12,
                          ),
                        ),
                      ),
                      textStyle: WidgetStatePropertyAll(
                        context.textTheme.bodyMedium?.copyWith(
                          letterSpacing: -0.08,
                          color: ref.watch(appPrimaryProvider),
                        ),
                      ),
                    ),
                    child: Text("Copy"),
                  ),
                  Flexible(
                    child: FilledButton(
                      onPressed: () async {
                        await SharePlus.instance.share(
                          ShareParams(
                            text: "Bank:\nGTB, \nAccount Number:\n123456788",
                          ),
                        );
                      },
                      style: context.filledButtonTheme.style?.copyWith(
                        fixedSize: WidgetStatePropertyAll(kButtonMediumSize),
                      ),
                      child: Text("Share"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

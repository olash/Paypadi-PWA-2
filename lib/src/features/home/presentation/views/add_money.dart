import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/presentation/widgets/home_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class AddMoneyScreen extends HookConsumerWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: "Add money",
      child: Padding(
        padding: EdgeInsets.only(top: useSpaceOf32),
        child: HomeCard(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Text("Available Balance", style: context.textTheme.bodyLarge),
              useSpaceOf16.verticalSpacing,
              Text(
                "Account Number",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Text(
                "Available Balance",
                style: context.textTheme.bodyLarge,
              ),
              useSpaceOf12.verticalSpacing,
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

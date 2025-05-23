import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class AccountRoleScreen extends HookConsumerWidget {
  const AccountRoleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Your Role",
            style: context.textTheme.headlineMedium,
          ),
          16.0.verticalSpacing,
          Text(
            "Choose your role to get a personalized experience.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),

          32.0.verticalSpacing,
          _RoleWidget(
            role: AccountRole.passenger,
            selectRole: () {
              context.router.push(PasswordRoute());
            },
          ),
          _RoleWidget(
            role: AccountRole.driver,
            selectRole: () {
              context.router.push(PasswordRoute());
            },
          ),
        ],
      ),
    );
  }
}

class _RoleWidget extends HookConsumerWidget {
  const _RoleWidget({required this.role, required this.selectRole});

  final AccountRole role;
  final VoidCallback selectRole;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: selectRole,
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: AppColors.black.withValues(alpha: .25),
            ),
          ],
        ),
        child: Row(
          spacing: 16,
          children: [
            switch (role) {
              AccountRole.passenger => AppAssets.illustrations.passenger.svg(),
              AccountRole.driver => AppAssets.illustrations.driver.svg(),
            },
            Expanded(
              child: Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    role.title,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    role.description,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/constants.dart' show kDemoProfilePic, Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/controllers/profile_controller.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart' show AppAvatar;
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart'
    show AppTextformfield;

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstName = useTextEditingController();
    final lastName = useTextEditingController();
    final email = useTextEditingController();

    ref.listen(userProfileProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
          firstName.text = d?.firstName ?? '';
          lastName.text = d?.lastName ?? '';
          email.text = d?.email ?? '';
        },
        error: (e, st) => ref.dismissLoading(),
        loading: ref.showLoading,
      );
    });
    final style = context.textTheme.bodySmall?.copyWith(
      fontWeight: FontWeight.w400,
    );

    return AppScaffold(
      title: 'Profile',
      makeScrollable: true,
      bottomPadding: Values.v24,
      child: Column(
        children: [
          Values.v24.verticalSpacing,
          const AppAvatar(radius: 80, imageUrl: kDemoProfilePic),
          Values.v8.verticalSpacing,
          GestureDetector(
            onTap: () {},
            child: Text(
              'Edit photo',
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Values.v20.verticalSpacing,
          AppTextformfield(
            title: 'First Name',
            titleStyle: style,
            controller: firstName,
          ),
          AppTextformfield(
            title: 'Last Name',
            titleStyle: style,
            controller: lastName,
          ),
          AppTextformfield(
            title: 'Email',
            titleStyle: style,
            controller: email,
          ),

          FilledButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}

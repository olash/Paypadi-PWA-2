import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class TransferScreen extends HookConsumerWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController accountNo = useTextEditingController();

    return AppScaffold(
      title: "Transfer",
      child: Column(
        children: [
          32.0.verticalSpacing,
          AppTextformfield(
            title: "Account Number",
            hint: "Enter 10-digit Account number or Phone Number",
            controller: accountNo,
            keyboardType: TextInputType.number,
          ),
          50.0.verticalSpacing,
          FilledButton(
            onPressed: () {
              context.router.push(MakePaymentRoute());
            },
            child: Text("Continue"),
          ),
          30.0.verticalSpacing,
          Flexible(
            child: _BeneficiariesList(),
          ),
        ],
      ),
    );
  }
}

class _BeneficiariesList extends HookConsumerWidget {
  const _BeneficiariesList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiariesList = useState<List>([]);
    final beneficiaryStatus = useState<BeneficiaryStatus>(
      BeneficiaryStatus.recent,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Beneficiaries",
          style: context.textTheme.labelMedium?.copyWith(
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
        8.0.verticalSpacing,

        Row(
          children: [
            _BeneficiaryListAction(
              text: "Recent",
              listenable: beneficiaryStatus,
              selected: beneficiaryStatus.value == BeneficiaryStatus.recent,
              onTap: () {
                beneficiaryStatus.value = BeneficiaryStatus.recent;
              },
            ),
            _BeneficiaryListAction(
              text: "Saved",
              listenable: beneficiaryStatus,
              selected: beneficiaryStatus.value == BeneficiaryStatus.saved,
              onTap: () {
                beneficiaryStatus.value = BeneficiaryStatus.saved;
              },
            ),
          ],
        ),
        4.0.verticalSpacing,
        SizedBox(
          height: context.screenHeight * .4,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return _BeneficiaryTile(
                name: "Ademola Ajani",
                imageUrl: kDemoProfilePic,
                transferType: "Withdrawal",
                transactionTime: "5:40 PM",
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BeneficiaryTile extends StatelessWidget {
  const _BeneficiaryTile({
    required this.name,
    required this.transferType,
    required this.transactionTime,
    required this.onTap,
    this.imageUrl,
  });

  final String name;
  final String transferType;
  final String transactionTime;
  final String? imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          16.0.horizontalSpacing,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "$transferType . $transactionTime",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Iconsax.arrow_2_outline),
        ],
      ),
    );
  }
}

class _BeneficiaryListAction extends StatelessWidget {
  const _BeneficiaryListAction({
    required this.onTap,
    required this.text,
    required this.selected,
    required this.listenable,
  });

  final bool selected;
  final String text;
  final VoidCallback onTap;
  final ValueNotifier<BeneficiaryStatus> listenable;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<BeneficiaryStatus>(
      valueListenable: listenable,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: Durations.long4,
            padding: EdgeInsets.all(10),
            decoration:
                selected
                    ? BoxDecoration(
                      color: AppColors.smallButtonColor,
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(32.r),
                    )
                    : null,
            child: Text(
              text,
              style: context.textTheme.labelMedium?.copyWith(
                color: selected ? AppColors.primary : null,
              ),
            ),
          ),
        );
      },
    );
  }
}

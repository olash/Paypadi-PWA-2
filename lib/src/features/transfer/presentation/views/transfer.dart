import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/service_registry/service_registry.dart'
    show appPrimaryColorProvider, appRouterProvider;
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/transfer/data/mock_data.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "Account Number",
              hint: "Enter 10-digit Account number or Phone Number",
              controller: accountNo,
              keyboardType: TextInputType.number,
            ),
            Values.v32.verticalSpacing,
            FilledButton(
              onPressed: () {
                ref.read(appRouterProvider).push(MakePaymentRoute());
              },
              child: Text("Continue"),
            ),
            Values.v32.verticalSpacing,
            _BeneficiariesList(),
          ],
        ),
      ),
    );
  }
}

class _BeneficiariesList extends HookConsumerWidget {
  const _BeneficiariesList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiaryStatus = useState<BeneficiaryStatus>(
      BeneficiaryStatus.recent,
    );
    final recentBeneficiariesList = useState<List<Beneficiary>>([
      Beneficiary(
        name: "Ademola Ajani",
        transferType: "Withdrawal",
        transactionTime: "5:40 PM",
      ),
      Beneficiary(
        name: "Ademola Ajani",
        transferType: "Withdrawal",
        transactionTime: "5:40 PM",
      ),
    ]);
    final savedBeneficiariesList = useState<List>([]);

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
        Values.v8.verticalSpacing,

        Row(
          children: [
            _BeneficiaryListAction(
              text: "Recent",
              listenable: beneficiaryStatus,
              selected: beneficiaryStatus.value == BeneficiaryStatus.recent,
              onTap: () => beneficiaryStatus.value = BeneficiaryStatus.recent,
            ),
            _BeneficiaryListAction(
              text: "Saved",
              listenable: beneficiaryStatus,
              selected: beneficiaryStatus.value == BeneficiaryStatus.saved,
              onTap: () => beneficiaryStatus.value = BeneficiaryStatus.saved,
            ),
          ],
        ),
        Values.v4.verticalSpacing,
        SizedBox(
          height: context.screenHeight * .6,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: switch (beneficiaryStatus.value) {
              BeneficiaryStatus.recent => recentBeneficiariesList.value.length,
              BeneficiaryStatus.saved => savedBeneficiariesList.value.length,
            },
            itemBuilder: (context, index) {
              final List data = switch (beneficiaryStatus.value) {
                BeneficiaryStatus.recent => recentBeneficiariesList.value,
                BeneficiaryStatus.saved => savedBeneficiariesList.value,
              };

              if (data.isEmpty) {
                return Row(
                  children: [
                    Icon(Icons.punch_clock_outlined),
                    Text("No recent beneficiary"),
                  ],
                );
              }

              return _BeneficiaryTile(
                name: data[index].name,
                transferType: data[index].transferType,
                transactionTime: data[index].transactionTime,
                onTap: () =>
                    ref.read(appRouterProvider).push(MakePaymentRoute()),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BeneficiaryTile extends ConsumerWidget {
  const _BeneficiaryTile({
    required this.name,
    required this.transferType,
    required this.transactionTime,
    required this.onTap,
  });

  final String name;
  final String transferType;
  final String transactionTime;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appPrimaryColorProvider);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withValues(alpha: .22),
              ),
              child: Text(
                name.split("").first,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: color,
                ),
              ),
            ),
            Values.v16.horizontalSpacing,
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
            Icon(CupertinoIcons.chevron_forward),
          ],
        ),
      ),
    );
  }
}

class _BeneficiaryListAction extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder<BeneficiaryStatus>(
      valueListenable: listenable,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: Durations.long4,
            padding: EdgeInsets.all(10),
            decoration: selected
                ? BoxDecoration(
                    color: ref.watch(appPrimaryColorProvider).withAlpha(20),
                    border: Border.all(
                      color: ref.watch(appPrimaryColorProvider),
                    ),
                    borderRadius: BorderRadius.circular(32),
                  )
                : null,
            child: Text(
              text,
              style: context.textTheme.labelMedium?.copyWith(
                color: selected ? ref.watch(appPrimaryColorProvider) : null,
              ),
            ),
          ),
        );
      },
    );
  }
}

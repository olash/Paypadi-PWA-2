import 'package:paypadi/src/features/authentication/data/datasource/payout_account/account_payout_client.dart';

class PayoutAccountRepository {
  const PayoutAccountRepository({required this.client});
  final AccountPayoutClient client;
}

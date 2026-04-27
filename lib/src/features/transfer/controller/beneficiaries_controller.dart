import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/utils/enums.dart';

part 'beneficiaries_controller.g.dart';

@riverpod
class RecentBeneficiaries extends _$RecentBeneficiaries {
  @override
  FutureOr<List<BeneficiaryModel>> build() async {
    final repository = ref.watch(transactionRepositoryProvider);
    final result = await repository.getRecentBeneficiaries();

    return result.fold(
      (success) => success.data,
      (failure) => throw failure,
    );
  }

  Future<void> refresh() {
    ref.invalidateSelf();
    return future;
  }
}

@riverpod
class SavedBeneficiaries extends _$SavedBeneficiaries {
  @override
  FutureOr<List<BeneficiaryModel>> build() async {
    final repository = ref.watch(transactionRepositoryProvider);
    final result = await repository.getSavedBeneficiaries();

    return result.fold(
      (success) => success.results,
      (failure) => throw failure,
    );
  }

  Future<void> refresh() {
    ref.invalidateSelf();
    return future;
  }
}

@riverpod
class BeneficiaryTypeController extends _$BeneficiaryTypeController {
  @override
  BeneficiaryType build() => BeneficiaryType.recent;

  void switchToSaved() {
    state = BeneficiaryType.saved;
    // ref.read(savedBeneficiariesProvider.notifier).refresh();
  }

  void switchToRecent() {
    state = BeneficiaryType.recent;
    // ref.read(recentBeneficiariesProvider.notifier).refresh();
  }
}

import 'package:paypadi/core/utils/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';
import 'package:paypadi/core/utils/enums.dart';

part 'beneficiaries_controller.g.dart';

@riverpod
class RecentBeneficiariesController extends _$RecentBeneficiariesController {
  late final TransactionRepository _repository;

  @override
  FutureOr<List<BeneficiaryModel>> build() async {
    _repository = ref.watch(transactionRepositoryProvider);

    state = AsyncLoading();
    final result = await _repository.getRecentBeneficiaries();

    if (!ref.mounted) return List.empty();

    result.fold(
      (success) => state = AsyncData(success.results),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(<BeneficiaryModel>[]);
      },
    );

    return state.value ?? List.empty();
  }

  void getRecentBeneficiaries() async {
    state = AsyncLoading();
    final result = await _repository.getRecentBeneficiaries();

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) => state = AsyncData(success.results),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(<BeneficiaryModel>[]);
      },
    );
  }
}

@riverpod
class SavedBeneficiariesController extends _$SavedBeneficiariesController {
  late final TransactionRepository _repository;

  @override
  FutureOr<List<BeneficiaryModel>> build() async {
    _repository = ref.watch(transactionRepositoryProvider);

    state = AsyncLoading();
    final result = await _repository.getSavedBeneficiaries();

    if (!ref.mounted) return List.empty();

    result.fold(
      (success) => state = AsyncData(success.results),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(<BeneficiaryModel>[]);
      },
    );

    return state.value ?? List.empty();
  }

  void getSavedBeneficiaries() async {
    state = AsyncLoading();
    final result = await _repository.getSavedBeneficiaries();

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) => state = AsyncData(success.results),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(<BeneficiaryModel>[]);
      },
    );
  }
}

@riverpod
class BeneficiaryTypeController extends _$BeneficiaryTypeController {
  @override
  BeneficiaryType build() => BeneficiaryType.recent;

  void switchToSaved() => state = BeneficiaryType.saved;

  void switchToRecent() => state = BeneficiaryType.recent;
}

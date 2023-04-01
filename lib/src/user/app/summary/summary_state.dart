part of 'summary_controller.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState({
    required Inventory inventory,
    required Balance balance,
    required bool isLoading,
    required Option<ApiFailure> error,
  }) = _SummaryState;

  factory SummaryState.initial() => SummaryState(
        inventory: Inventory.empty(),
        balance: Balance.empty(),
        isLoading: true,
        error: none(),
      );
}

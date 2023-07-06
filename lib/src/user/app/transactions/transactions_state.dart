part of 'transactions_controller.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required bool isLoading,
    required List<Transaction> transactions,
    required Option<ApiFailure> error,
  }) = _TransactionsState;
  factory TransactionsState.initial() => TransactionsState(
        isLoading: true,
        transactions: [],
        error: none(),
      );
  factory TransactionsState.data(List<Transaction> data) => TransactionsState(
        isLoading: false,
        transactions: data,
        error: none(),
      );
  factory TransactionsState.error(ApiFailure error) => TransactionsState(
        isLoading: false,
        transactions: [],
        error: some(error),
      );
}

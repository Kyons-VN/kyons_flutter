part of 'packages_controller.dart';

@freezed
class PackagesState with _$PackagesState {
  const factory PackagesState({
    required bool isLoading,
    required Option<List<Package>> packages,
    required Option<Balance> balance,
    required Option<ApiFailure> error,
    required bool isDone,
    required bool showError,
    required Option<int> quantity,
    required Option<Package> orderedPackage,
  }) = _PackagesState;
  factory PackagesState.initial() => PackagesState(
        isLoading: false,
        packages: none(),
        balance: none(),
        error: none(),
        isDone: false,
        showError: false,
        quantity: none(),
        orderedPackage: none(),
      );
}

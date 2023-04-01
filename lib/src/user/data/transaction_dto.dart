import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/transaction.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
class TransactionDto with _$TransactionDto {
  const TransactionDto._();
  const factory TransactionDto({
    required String id,
    @JsonKey(name: 'package_name') required String packageName,
    required int quantity,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required double amount,
  }) = _TransactionDto;
  // fromJson
  factory TransactionDto.fromJson(Map<String, dynamic> json) => _$TransactionDtoFromJson(json);
  // toDomain
  Transaction toDomain() => Transaction(
        id: id,
        packageName: packageName,
        quantity: quantity,
        createdAt: createdAt,
        amount: amount,
      );
}

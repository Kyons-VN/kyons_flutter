import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/balance.dart';

part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

@freezed
class BalanceDto with _$BalanceDto {
  const BalanceDto._();
  const factory BalanceDto({@JsonKey(name: 'balance') required int value}) = _BalanceDto;
  // fromJson
  factory BalanceDto.fromJson(Map<String, dynamic> json) => _$BalanceDtoFromJson(json);
  // toDomain
  Balance toDomain() => Balance(value);
}

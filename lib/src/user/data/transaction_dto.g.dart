// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDto _$$_TransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_TransactionDto(
      id: json['id'] as String,
      packageName: json['package_name'] as String,
      quantity: json['quantity'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'package_name': instance.packageName,
      'quantity': instance.quantity,
      'created_at': instance.createdAt.toIso8601String(),
      'amount': instance.amount,
    };

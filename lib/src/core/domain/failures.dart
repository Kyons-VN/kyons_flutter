import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T? failedValue,
    String? reason,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortText({
    @required T? failedValue,
    @required int? minLength,
    String? reason,
  }) = ShortText<T>;
  const factory ValueFailure.emptyValue({@required T? failedValue, String? reason}) = EmptyValue<T>;
  const factory ValueFailure.multilines({
    @required T? failedValue,
  }) = Multilines<T>;
  const factory ValueFailure.longText({
    @required T? failedValue,
    @required int? maxLength,
  }) = LongText<T>;
  const factory ValueFailure.longList({
    @required T? failedValue,
    @required int? maxLength,
  }) = LongList<T>;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure<T> with _$ApiFailure<T> {
  const factory ApiFailure.clientError() = ClientError;
  const factory ApiFailure.serverError() = ServerError;
  const factory ApiFailure.unAuthenticated() = UnAuthenticated;
}

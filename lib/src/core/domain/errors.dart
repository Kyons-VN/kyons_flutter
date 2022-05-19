import 'failures.dart';

class UnexpectedError extends Error {
  final ValueFailure valueFailure;

  UnexpectedError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('UnexpectedError: $valueFailure');
  }
}

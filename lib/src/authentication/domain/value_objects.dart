import 'package:fpdart/fpdart.dart';
import 'package:shared_package/shared_package.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    return Phone._(
      validatePhoneNumber(input),
    );
  }

  const Phone._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

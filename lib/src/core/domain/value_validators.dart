import 'package:fpdart/fpdart.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input, reason: 'Invalid Email'));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const minLength = 6;
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.shortText(failedValue: input, minLength: minLength, reason: 'The text is too short'));
  }
}

Either<ValueFailure<String>, String> validateMaxLengthString(String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.longText(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<String>, String> validateEmptyString(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyValue(failedValue: input, reason: 'Empty string'));
  }
}

Either<ValueFailure<String>, String> validateMultilinesString(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multilines(failedValue: input));
  }
}

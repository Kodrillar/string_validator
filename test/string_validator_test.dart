import 'package:flutter_test/flutter_test.dart';
import 'package:string_validator/src/validators/lower_case_validator.dart';
import 'package:string_validator/string_validator.dart';

void main() {
  test('returns true value for uppercase letters only', () {
    bool isValid = UpperCaseValidator(string: 'D').validateString();

    expect(isValid, true);
  });

  test('returns true value for lowercase letters', () {
    bool isLowercase = LowerCaseValidator(string: 'd').validateString();
    expect(isLowercase, true);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:string_validator/string_validator.dart';

void main() {
  test('returns true value for uppercase letters only', () {
    bool isValid = UpperCaseValidator(string: 'D').validateString();

    expect(isValid, true);
  });
}

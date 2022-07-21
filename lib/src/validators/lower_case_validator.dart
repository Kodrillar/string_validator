import 'package:string_validator/src/interface/validator_interface.dart';

class LowerCaseValidator implements RegExValidation {
  LowerCaseValidator({required this.string});

  final String string;

  @override
  int get endOfMatch => string.length;

  @override
  String get regExPattern => '[a-z]';

  @override
  int get startOfMatch => 0;

  @override
  bool validateString() {
    final RegExp regExp = RegExp(regExPattern);
    final Iterable<RegExpMatch> matchedStrings = regExp.allMatches(string);
    for (var matchedString in matchedStrings) {
      return matchedString.start == startOfMatch &&
          matchedString.end == endOfMatch;
    }
    return false;
  }
}

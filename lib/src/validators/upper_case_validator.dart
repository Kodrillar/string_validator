import 'package:string_validator/src/interface/validator_interface.dart';

class UpperCaseValidator implements RegExValidation {
  UpperCaseValidator({required this.string});
  final String string;

  //capital letters only
  @override
  String get regExPattern => '[A-Z]';

  @override
  int get startOfMatch => 0;

  @override
  int get endOfMatch => string.length;

  @override
  bool validateString() {
    final RegExp regExp = RegExp(regExPattern);
    final matchedStrings = regExp.allMatches(string);

    for (var matchedString in matchedStrings) {
      /**
       *  For a matchedString to start at index 0 means, the string 
       *  matches the Regular expresion pattern starting from the first character.
       * 
       *  If the position at which a string stopped matching is the same as the length of the string,
       *  then the matching reached the end of the string.
       *  Assume: var string sex = 'male'; stopped matching at 'e' 
       *                           1234
       *  Position 'e' is 4;
       *  lenght of string(sex) is 4
       * 
       * */
      if (matchedString.start == startOfMatch &&
          matchedString.end == endOfMatch) {
        return true;
      }
    }

    return false;
  }
}

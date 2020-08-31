abstract class Validation {
  Validation _nextValidation;
  Validation linkValidation(Validation next) {
    _nextValidation = next;
    return _nextValidation;
  }

  bool check(int accountNumber);

  bool checkNext(int accountNumber) {
    if (_nextValidation == null) {
      return true;
    }
    return _nextValidation.check(accountNumber);
  }
}

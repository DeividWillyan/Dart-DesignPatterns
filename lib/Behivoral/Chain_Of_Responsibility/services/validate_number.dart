import 'validation_cor.dart';

class ValidateNumber extends Validation {
  static final int _EXPECTED_ACCOUNT_NUMBER = 904996;

  @override
  bool check(int accountNumber) {
    return accountNumber == _EXPECTED_ACCOUNT_NUMBER
        ? checkNext(accountNumber)
        : false;
  }
}

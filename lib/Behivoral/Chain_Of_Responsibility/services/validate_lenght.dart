import 'validation_cor.dart';

class ValidateLenght extends Validation {
  static final int _VALID_MIM_LENGHT = 6;
  static final int _VALID_MAX_LENGHT = 10;

  @override
  bool check(int accountNumber) {
    return (accountNumber.toString().length >= _VALID_MIM_LENGHT &&
            accountNumber.toString().length <= _VALID_MAX_LENGHT)
        ? checkNext(accountNumber)
        : false;
  }
}

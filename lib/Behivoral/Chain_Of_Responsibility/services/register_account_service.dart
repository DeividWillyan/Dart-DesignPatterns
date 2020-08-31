import 'validate_lenght.dart';
import 'validate_number.dart';
import 'validation_cor.dart';

class RegisterAccount {
  Validation _validation;

  RegisterAccount() {
    _validation = ValidateLenght().linkValidation(ValidateNumber());
  }

  void register(int newAccountNumber) {
    if (_validation.check(newAccountNumber)) {
      print('    => Success register new account $newAccountNumber...');
    } else {
      print('    => Failure register new account $newAccountNumber...');
    }
  }
}

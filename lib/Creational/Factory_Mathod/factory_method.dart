import 'bank.dart';

class FactoryMethod {
  Bank bank;

  void initialize() {
    var inputAccountType = 'Free';
    if (inputAccountType == 'Free') {
      bank = FreeBank();
    } else if (inputAccountType == 'Completer') {
      bank = CompleterBank();
    } else {
      throw Exception('Type selected not found.');
    }
  }

  void call() {
    initialize();
    bank.create();
  }
}

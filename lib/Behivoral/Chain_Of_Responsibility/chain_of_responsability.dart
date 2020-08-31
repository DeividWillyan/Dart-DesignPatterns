import 'services/register_account_service.dart';

class ChainOfResponsability {
  void call() {
    var registerAccount = RegisterAccount();

    registerAccount.register(904996);
    registerAccount.register(904875);
  }
}

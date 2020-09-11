import 'service/account_service.dart';
import 'service/states/unlock_account_state.dart';

class State {
  void call() {
    var account = Account(UnlockAccountService());
    print('   => inicial state is ${account.state.currentState}');
    account.blockAccount();
    account.unlockAccount();
  }
}

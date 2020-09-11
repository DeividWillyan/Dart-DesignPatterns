import 'account_state.dart';

class Account {
  AccountState state;

  Account(AccountState state) {
    setNewState(state);
  }

  void setNewState(AccountState state) {
    print('   => current state account ' + state.currentState);
    this.state = state;
    this.state.setAccount(this);
  }

  void unlockAccount() => state.unlockAccount();
  void blockAccount() => state.blockAccount();
}

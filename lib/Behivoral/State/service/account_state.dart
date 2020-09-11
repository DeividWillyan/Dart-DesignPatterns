import 'account_service.dart';

abstract class AccountState {
  String currentState;

  Account account;
  void setAccount(Account account) => this.account = account;

  void unlockAccount();
  void blockAccount();
}

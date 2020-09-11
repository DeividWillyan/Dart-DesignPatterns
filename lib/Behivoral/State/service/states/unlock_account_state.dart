import '../account_state.dart';
import 'block_account_state.dart';

class UnlockAccountService extends AccountState {
  @override
  String get currentState => super.currentState = 'unlock';

  @override
  void unlockAccount() => print('   => Account is already locked...');

  @override
  void blockAccount() => account.setNewState(BlockAccountService());
}

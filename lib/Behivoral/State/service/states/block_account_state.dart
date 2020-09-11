import '../account_state.dart';

import 'unlock_account_state.dart';

class BlockAccountService extends AccountState {
  @override
  String get currentState => super.currentState = 'block';

  @override
  void unlockAccount() => account.setNewState(UnlockAccountService());

  @override
  void blockAccount() => print('   => Account is already locked...');
}

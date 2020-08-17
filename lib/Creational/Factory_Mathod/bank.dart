abstract class Account {
  void type();
}

abstract class Bank {
  Account _createAccount();

  void create() {
    var create = _createAccount();
    create.type();
    print('    => creating account...');
  }
}

class CompleterBank extends Bank {
  @override
  Account _createAccount() => CompleterAccount();
}

class CompleterAccount implements Account {
  @override
  void type() => print('    => type is completer account.');
}

class FreeBank extends Bank {
  @override
  Account _createAccount() => FreeAccount();
}

class FreeAccount implements Account {
  @override
  void type() => print('    => type is fee account.');
}

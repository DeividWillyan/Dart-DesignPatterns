abstract class Conta {
  void getSaldo();
}

class ContaFree implements Conta {
  final Saldo _saldo;
  ContaFree(this._saldo);

  @override
  void getSaldo() =>
      print('Saldo na conta free é de: R\$ ${_saldo.getValor()}');
}

class ContaPremium implements Conta {
  final Saldo _saldo;
  ContaPremium(this._saldo);

  @override
  void getSaldo() =>
      print('Saldo na conta premium é de: R\$ ${_saldo.getValor()}');
}

abstract class Saldo {
  String getValor();
}

class SaldoTotal implements Saldo {
  @override
  String getValor() => '19,90';
}

class SaldoDisponivel implements Saldo {
  @override
  String getValor() => '5,50';
}

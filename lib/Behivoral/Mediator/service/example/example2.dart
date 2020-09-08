abstract class ITransferService {
  void transfer(double amount, String favorecidoId);
  void addFavorecido(Favorecido favorecido);
}

class TransferService implements ITransferService {
  Map<String, Favorecido> favorecidoMap = {};

  @override
  void addFavorecido(favorecido) =>
      favorecidoMap.putIfAbsent(favorecido.id, () => favorecido);

  @override
  void transfer(double amount, String favorecidoId) {
    var favorecido = favorecidoMap[favorecidoId];
    favorecido.addSaldo(amount);
  }
}

abstract class Favorecido {
  ITransferService mediator;
  String id;
  double saldo = 0;

  Favorecido(this.mediator, this.id, this.saldo);

  void transfer(double amount, String favorecidoId);
  void addSaldo(double amount);
}

class FavorecidoMediator extends Favorecido {
  FavorecidoMediator(ITransferService mediator, String id, double saldo)
      : super(mediator, id, saldo) {
    print('Favorecido $id criado com saldo de $saldo');
  }

  @override
  void transfer(double amount, String favorecidoId) {
    print('Favorecido $id enviou $amount para favorecido $favorecidoId');
    saldo -= amount;
    mediator.transfer(amount, favorecidoId);
  }

  @override
  void addSaldo(double amount) {
    saldo += amount;
    print('Favorecido $id agora tem de saldo $saldo');
  }
}

void main(List<String> args) {
  ITransferService service = TransferService();

  Favorecido fav1 = FavorecidoMediator(service, '1', 200);
  Favorecido fav2 = FavorecidoMediator(service, '2', 300);

  service.addFavorecido(fav1);
  service.addFavorecido(fav2);

  fav1.transfer(100, '2');
  fav2.transfer(100, '1');
}

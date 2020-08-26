import 'boleto_facade.dart';

class Facade {
  void call() {
    var facade = BoletoFacade();
    facade.process();
  }
}

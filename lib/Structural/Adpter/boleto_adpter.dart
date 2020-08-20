import 'services/boleto_service.dart';
import 'services/credit_card_service.dart';

class BoletoAdpter extends CreditCard {
  final Boleto _boleto;
  BoletoAdpter(this._boleto);

  @override
  void payment() {
    print('    => adpting boleto payment to credit card interface');
    _boleto.payment();
  }
}

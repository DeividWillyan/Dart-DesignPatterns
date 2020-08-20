import 'boleto_adpter.dart';
import 'services/boleto_service.dart';
import 'services/credit_card_service.dart';
import 'services/pay_service.dart';

class Adpter {
  void call() {
    var pay = Pay();
    print('    => inicialized pay service with credit card is expected.');

    var creditCardPayment = CreditCard();
    pay.paying(creditCardPayment);

    var boletoPayment = Boleto();
    var boletoPaymentAdpter = BoletoAdpter(boletoPayment);
    pay.paying(boletoPaymentAdpter);
  }
}

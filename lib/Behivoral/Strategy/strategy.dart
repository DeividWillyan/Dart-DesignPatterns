import 'service/order_context.dart';
import 'service/strategies/payment_boleto.dart';
import 'service/strategies/payment_cash.dart';
import 'service/strategies/payment_credit_card.dart';

class Strategy {
  void call() {
    var orderContext = OrderContext(PaymentWithCreditCard());
    orderContext.doSomeBusinessLogic();
    orderContext = OrderContext(PaymentWithCash());
    orderContext.doSomeBusinessLogic();
    orderContext = OrderContext(PaymentWithBoleto());
    orderContext.doSomeBusinessLogic();
  }
}

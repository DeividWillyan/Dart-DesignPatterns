import 'payment_strategy.dart';

class OrderContext {
  PaymentStrategy _paymentStrategy;
  OrderContext(this._paymentStrategy);

  void setPaymentStrategy(PaymentStrategy paymentStrategy) => _paymentStrategy = paymentStrategy;

  void doSomeBusinessLogic() => _paymentStrategy.pay();
}

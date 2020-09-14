import '../payment_strategy.dart';

class PaymentWithCreditCard implements PaymentStrategy {
  @override
  void pay() => print('   => payment with credit card...');
}

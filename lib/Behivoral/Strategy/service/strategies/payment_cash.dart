import '../payment_strategy.dart';

class PaymentWithCash implements PaymentStrategy {
  @override
  void pay() => print('   => payment with cash...');
}

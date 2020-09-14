import '../payment_strategy.dart';

class PaymentWithBoleto implements PaymentStrategy {
  @override
  void pay() => print('   => payment with boleto...');
}

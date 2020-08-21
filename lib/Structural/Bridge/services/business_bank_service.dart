import 'operations_service.dart';

class BusinessBank implements Operations {
  @override
  void pay() => print('       => BusinessBank Pay...');

  @override
  void transfer() => print('       => BusinessBank Transfer...');

  @override
  void withdraw() => print('       => BusinessBank Withdraw...');
}

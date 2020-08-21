import 'operations_service.dart';

class FreeBank implements Operations {
  @override
  void pay() => print('       => FreeBank Pay...');

  @override
  void transfer() => print('       => FreeBrank Transfer...');

  @override
  void withdraw() => print('       => FreeBank Withdraw...');
}

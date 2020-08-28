import 'balance_service.dart';

class BalanceServiceImp implements BalanceService {
  final double _balance = 2.000;

  @override
  double getBalance() => _balance;
}

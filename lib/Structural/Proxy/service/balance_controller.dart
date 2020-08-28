import 'balance_service.dart';

class BalanceController {
  final BalanceService _service;
  BalanceController(this._service);

  void getBalance() => print(
        '        => balance value is: ${_service.getBalance()}',
      );
}

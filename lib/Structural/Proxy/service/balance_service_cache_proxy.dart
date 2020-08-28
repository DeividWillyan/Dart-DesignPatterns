import 'package:design_patterns/Structural/Proxy/service/balance_service_imp.dart';

import 'balance_service.dart';

class BalanceServiceCacheProxy implements BalanceService {
  BalanceService _balanceService;
  BalanceServiceCacheProxy() {
    _balanceService = BalanceServiceImp();
  }

  double _balanceCache;

  @override
  double getBalance() {
    if (_balanceCache == null) {
      _balanceCache = _balanceService.getBalance();
      print('    => getting from BalanceServiceImp...');
    } else {
      print('    => getting from BalanceServiceCacheProxy...');
    }
    return _balanceCache;
  }
}

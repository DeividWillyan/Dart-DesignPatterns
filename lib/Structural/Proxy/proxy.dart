import 'service/balance_controller.dart';
import 'service/balance_service_cache_proxy.dart';

class Proxy {
  void call() {
    var _controller = BalanceController(BalanceServiceCacheProxy());
    _controller.getBalance();
    _controller.getBalance();
    _controller.getBalance();
  }
}

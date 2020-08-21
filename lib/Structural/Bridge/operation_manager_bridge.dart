import 'services/operation_manager.dart';
import 'services/operations_service.dart';

class OperationManagerImp implements OperationManager {
  final Operations _operations;
  OperationManagerImp(this._operations);

  @override
  void effectivePay() => _operations.pay();

  @override
  void effectiveTransfer() => _operations.transfer();

  @override
  void effectiveWithdraw() => _operations.withdraw();
}

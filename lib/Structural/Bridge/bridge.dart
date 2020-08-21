import 'services/operation_manager.dart';
import 'operation_manager_bridge.dart';
import 'services/business_bank_service.dart';
import 'services/free_bank_service.dart';

class Bridge {
  void call() {
    print('    => creating OperationManager...');
    OperationManager om = OperationManagerImp(FreeBank());
    print('    => selected FreeBank for operations...');
    om.effectivePay();
    om.effectiveTransfer();

    om = OperationManagerImp(BusinessBank());
    print('    => selected FreeBank for operations...');
    om.effectivePay();
    om.effectiveTransfer();
  }
}

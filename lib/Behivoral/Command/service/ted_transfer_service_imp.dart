import 'transfer_model.dart';
import 'transfer_service.dart';

class TedService implements TransferService {
  @override
  String send(Transfer transfer) =>
      '    => sending ted for service... \n${transfer.toString()}';
}

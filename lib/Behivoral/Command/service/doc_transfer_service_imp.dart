import 'transfer_model.dart';
import 'transfer_service.dart';

class DocService implements TransferService {
  @override
  String send(Transfer transfer) =>
      '    => sending doc for service... \n${transfer.toString()}';
}

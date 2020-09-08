import 'service/ted_transfer.dart';
import 'service/transfer_mediator.dart';

class Mediator {
  void call() {
    var ted = TED();
    TransferMediator(ted);
    ted.action();
  }
}

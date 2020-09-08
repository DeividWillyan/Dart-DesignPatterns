import 'transfer_base.dart';

class TED extends TransferBase {
  void action() {
    print('    => TED Action');
    super.mediator.notify(this, 'TED');
  }
}

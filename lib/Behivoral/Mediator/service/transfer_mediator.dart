import 'mediator.dart';
import 'ted_transfer.dart';

class TransferMediator implements Mediator {
  final TED _ted;
  TransferMediator(this._ted) {
    _ted.setMediator(this);
  }

  @override
  void notify(Object transfer, String event) {
    if (event == 'TED') {
      print('    => mediator notify...');
    }
  }
}

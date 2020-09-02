import 'service/command/command_manager.dart';
import 'service/command/transfer_command.dart';
import 'service/doc_transfer_service_imp.dart';
import 'service/ted_transfer_service_imp.dart';
import 'service/transfer_model.dart';

class Command {
  void call() {
    var ted =
        Transfer('Deivid', '09758093945', '04996', '200.00', TypeTransfer.TED);
    var transferTed = TransferCommand(ted, TedService());

    var doc =
        Transfer('Julio', '074345454334', '748486', '76.00', TypeTransfer.DOC);
    var transferDoc = TransferCommand(doc, DocService());

    CommandManager().execute(
      [transferTed, transferDoc],
    );
  }
}

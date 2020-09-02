import '../transfer_model.dart';
import '../transfer_service.dart';
import 'command.dart';

class TransferCommand implements Command {
  final Transfer _transfer;
  final TransferService _service;
  TransferCommand(this._transfer, this._service);

  @override
  void execute() => print('${_service.send(_transfer)}');

  @override
  String toString() =>
      '    => TransferCommand(_transfer: $_transfer, _service: $_service)';
}

import 'service/command_pattern/command_history.dart';
import 'service/command_pattern/commands/random_properties_command.dart';
import 'service/memento_pattern/originator.dart';

void main(List<String> args) {
  final _commandHistory = CommandHistory();
  final _originator = Originator();
  print(_originator);

  var command = RandomisePropertiesCommand(_originator);
  command.execute();
  _commandHistory.add(command);
  print(_originator);

  _commandHistory.undo();
  print(_originator);
}

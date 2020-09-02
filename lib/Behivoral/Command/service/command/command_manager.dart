import 'package:design_patterns/Behivoral/Command/service/command/queue_command.dart';

import 'command.dart';

class CommandManager {
  QueueCommand queue = QueueCommand();

  void execute(List<Command> commands) {
    for (var command in commands) {
      queue.push(command);
      command.execute();
    }
  }
}

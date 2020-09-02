import 'dart:collection';
import 'command.dart';

class QueueCommand {
  Queue<Command> _queue;
  QueueCommand() {
    _queue = Queue<Command>();
  }

  void push(Command command) => _queue.add(command);
  void pop() {
    if (_queue.isNotEmpty) _queue.remove(_queue.first);
  }

  void queueView() => _queue.forEach((c) => print(c.toString()));
}

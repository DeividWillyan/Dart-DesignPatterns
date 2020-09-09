import 'dart:math';

import '../command.dart';
import '../../memento_pattern/memento.dart';
import '../../memento_pattern/originator.dart';

class RandomisePropertiesCommand implements ICommand {
  Originator originator;
  IMemento _backup;

  RandomisePropertiesCommand(this.originator) {
    _backup = originator.createMemento();
  }

  @override
  void execute() {
    var shape = originator.state;
    shape.color = random(255).toDouble();
    shape.height = random(150, min: 50).toDouble();
    shape.width = random(150, min: 50).toDouble();
  }

  @override
  void undo() {
    if (_backup != null) {
      originator.restore(_backup);
    }
  }
}

int random(int max, {int min = 0}) =>
    max == min ? max : Random().nextInt(max - min) + min;

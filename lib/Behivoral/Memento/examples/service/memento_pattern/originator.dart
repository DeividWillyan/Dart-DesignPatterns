import '../shape_model.dart';
import './memento.dart';
import 'memento_imp.dart';

class Originator {
  Shape state;

  Originator() {
    state = Shape.initial();
  }

  IMemento createMemento() => Memento(state);

  void restore(IMemento memento) => state = memento.getState();

  @override
  String toString() => 'Originator(state: $state)';
}

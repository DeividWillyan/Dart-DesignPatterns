import '../shape_model.dart';
import 'memento.dart';

class Memento extends IMemento {
  Shape _state;

  Memento(Shape shape) {
    _state = Shape.copy(shape);
  }

  @override
  Shape getState() => _state;
}

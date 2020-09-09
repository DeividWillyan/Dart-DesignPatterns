import 'service/editor_model.dart';
import 'service/memento_history.dart';

class Memento {
  void call() {
    var history = History();

    var editor1 = Editor()
      ..setText('editor 1')
      ..setCursor(1, 1)
      ..setSelectionWidth(10);

    print('    => creating object... $editor1');

    history.add(editor1.createSnapshot());

    editor1
      ..setCursor(11, 11)
      ..setText('ditor 1 modified')
      ..setSelectionWidth(111);

    print('    => modified object... $editor1');
    history.get(0).restore();

    print('    => restored object... $editor1');
  }
}

import 'editor_model.dart';

class Snapshot {
  final Editor _editor;
  final String _text;
  final double _curX;
  final double _curY;
  final double _selectionWidth;

  Snapshot(
      this._editor, this._text, this._curX, this._curY, this._selectionWidth);

  void restore() {
    print('        => restoring snapshot/memento');
    _editor.setText(_text);
    _editor.setCursor(_curX, _curY);
    _editor.setSelectionWidth(_selectionWidth);
  }
}

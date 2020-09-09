import 'snapshot_memento.dart';

class Editor {
  String _text;
  double _curX;
  double _curY;
  double _selectionWidth;

  void setText(text) => _text = text;

  void setCursor(double x, double y) {
    _curX = x;
    _curY = y;
  }

  void setSelectionWidth(double selectionWidth) =>
      _selectionWidth = selectionWidth;

  Snapshot createSnapshot() {
    print('        => creating snapshot/memento');
    return Snapshot(this, _text, _curX, _curY, _selectionWidth);
  }

  @override
  String toString() =>
      'Editor(_text: $_text, _curX: $_curX, _curY: $_curY, _selectionWidth: $_selectionWidth)';
}

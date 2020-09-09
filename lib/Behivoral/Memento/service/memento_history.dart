import 'snapshot_memento.dart';

class History {
  final List<Snapshot> mementos = [];

  void add(Snapshot state) => mementos.add(state);
  Snapshot get(int index) => mementos[index];
}

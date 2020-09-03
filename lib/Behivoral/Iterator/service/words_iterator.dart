import 'custom_iterator.dart';
import 'words_aggregator.dart';

class WordsIterator implements CustomIterator<String> {
  int _index = 0;
  final WordsAggregator _collection;
  WordsIterator(this._collection);

  @override
  int index() => _index;

  @override
  String next() => _collection.getItems()[_index++];

  @override
  bool hasNext() => _index < _collection.getCount();
}

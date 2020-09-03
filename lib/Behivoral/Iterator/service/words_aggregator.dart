import 'package:design_patterns/Behivoral/Iterator/service/words_iterator.dart';

import 'aggregator.dart';
import 'custom_iterator.dart';

class WordsAggregator implements Aggregator<String> {
  final List<String> _words = [];

  List<String> getItems() => _words;
  int getCount() => _words.length;
  void addItem(String val) => _words.add(val);

  @override
  CustomIterator<String> getIterator() => WordsIterator(this);
}

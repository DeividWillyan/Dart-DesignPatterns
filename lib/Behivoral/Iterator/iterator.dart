import 'service/words_aggregator.dart';

class Iterator {
  void call() {
    var collection = WordsAggregator();
    collection.addItem('First');
    collection.addItem('Second');
    collection.addItem('Third');

    var iterator = collection.getIterator();

    while (iterator.hasNext()) {
      print(
        '    => index: ${iterator.index()}, hasNext: ${iterator.hasNext()}, next: ${iterator.next()}',
      );
    }
  }
}

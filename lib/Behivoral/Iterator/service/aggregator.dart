import 'custom_iterator.dart';

abstract class Aggregator<T> {
  CustomIterator<T> getIterator();
}

import 'observer.dart';
import 'products_subject_imp.dart';
import 'subject.dart';

class Store implements Observer {
  final List<Products> products = [];

  @override
  void update(Subject subject) {
    if (subject is Products && subject.phones.isNotEmpty && (!products.contains(subject))) {
      products.add(subject);
    }
    print(toString());
  }

  @override
  String toString() => '        => Store(products: $products)';
}

import 'service/phone_model.dart';
import 'service/products_subject_imp.dart';
import 'service/store_observer_imp.dart';

class Observer {
  void call() {
    var subject = Products();
    var storeObserver = Store();

    subject.attach(storeObserver);

    subject.addPhone(Phone(1000.99, 'Xiomi'));

    subject.addPhone(Phone(4000.99, 'Iphone'));
  }
}

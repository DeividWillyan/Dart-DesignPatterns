import 'observer.dart';
import 'phone_model.dart';
import 'subject.dart';

class Products implements Subject {
  final List<Observer> _observers = [];

  @override
  void attach(Observer observer) {
    var contains = _observers.contains(observer);
    if (contains) {
      return print('   => Subject: Observer has been attached already.');
    }
    print('   => Subject: Attached an observer.');
    _observers.add(observer);
  }

  @override
  void detach(Observer observer) {
    var contains = _observers.contains(observer);
    if (contains) {
      return print('   => Subject: Nonexistent observer.');
    }
    _observers.remove(observer);
    print('   => Subject: Detached an observer.');
  }

  @override
  void notify() {
    print('   => Subject: Notifying observers...');
    for (var observer in _observers) {
      observer.update(this);
    }
  }

  List<Phone> phones = [];
  void addPhone(Phone phone) {
    phones.add(phone);
    print('   => Subject: Add phone to product');
    notify();
  }

  @override
  String toString() => 'Products(phones: $phones)';
}

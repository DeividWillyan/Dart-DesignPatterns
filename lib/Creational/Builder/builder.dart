import 'package:design_patterns/Creational/Builder/person.dart';

class Builder {
  void call() {
    print('    => creating person with builder...');
    var person = PersonBuilder.instance
        .name('Deivid')
        .age(24)
        .phone('43 99999999')
        .country('Brazil')
        .build();
    print(person);
  }
}

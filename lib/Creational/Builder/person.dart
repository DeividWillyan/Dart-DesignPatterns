class Person {
  String name;
  int age;
  String phone;
  String country;

  @override
  String toString() {
    return '    => Person(name: $name, age: $age, phone: $phone, country: $country)';
  }
}

class PersonBuilder
    implements PersonName, PersonAge, PersonPhone, PersonCountry {
  final Person _person = Person();
  PersonBuilder._();
  static PersonName get instance => PersonBuilder._();

  @override
  PersonAge name(String name) {
    _person.name = name;
    return this;
  }

  @override
  PersonPhone age(int age) {
    _person.age = age;
    return this;
  }

  @override
  PersonCountry phone(String phone) {
    _person.phone = phone;
    return this;
  }

  @override
  PersonCountry country(String country) {
    _person.country = country;
    return this;
  }

  @override
  Person build() => _person;
}

abstract class PersonName {
  PersonAge name(String name);
}

abstract class PersonAge {
  PersonPhone age(int age);
}

abstract class PersonPhone {
  PersonCountry phone(String phone);
}

abstract class PersonCountry {
  PersonCountry country(String country);
  Person build();
}

import 'package:design_patterns/Structural/Facade/external_framework_example/person_repository.dart';

class PersonService {
  final PersonRepository _repository;
  PersonService(this._repository);

  String typePerson = 'F';
  int quantityOpenOfBoletos() => _repository.getQuantityOpenOfBoletosOfPerson();
}

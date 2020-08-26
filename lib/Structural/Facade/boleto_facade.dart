import 'external_framework_example/boleto_factory.dart';
import 'external_framework_example/boleto_type_A_model.dart';
import 'external_framework_example/boleto_type_B_model.dart';
import 'external_framework_example/person_repository.dart';
import 'external_framework_example/person_service.dart';

class BoletoFacade {
  void process() {
    print('   => creating boleto facade...');
    print('   => processing boleto facade...');

    var boletoFactory = BoletoFactory();
    var personRepository = PersonRepository();
    var personService = PersonService(personRepository);

    var quantityOpen = personService.quantityOpenOfBoletos();
    if (quantityOpen < 1) return print('there are no open boletos...');

    for (var i = 0; i < quantityOpen; i++) {
      switch (personService.typePerson) {
        case 'J':
          print(boletoFactory.factory(BoletoTypeA().getValue()));
          continue;
        case 'F':
          print(boletoFactory.factory(BoletoTypeB().getValue()));
          continue;
        default:
          print('boleto type not found...');
          continue;
      }
    }
  }
}

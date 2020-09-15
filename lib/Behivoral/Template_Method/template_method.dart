import 'service/fabricate_registration_admin.dart';
import 'service/fabricate_registration_service.dart';
import 'service/fabricate_registration_user.dart';

class TemplateMethod {
  void call() {
    FabricateRegistration registration = FabricateRegistrationAdmin();
    registration.maker();
    print('   => -------------------------------------');
    registration = FabricateRegistrationUser();
    registration.maker();
  }
}

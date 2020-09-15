import 'fabricate_registration_service.dart';

class FabricateRegistrationAdmin extends FabricateRegistration {
  @override
  void insertUser() => print('   => inserting admin');
}

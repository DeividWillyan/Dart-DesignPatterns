import 'fabricate_registration_service.dart';

class FabricateRegistrationUser extends FabricateRegistration {
  @override
  void insertUser() => print('   => inserting user');
  @override
  void alterDefaultDoSomeBusinessLogic() => print('   => alter after business logic for user');
}

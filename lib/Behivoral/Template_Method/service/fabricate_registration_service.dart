abstract class FabricateRegistration {
  void maker() {
    beforeDefaultValidate();
    insertUser();
    alterDefaultDoSomeBusinessLogic();
  }

  void beforeDefaultValidate() => print('   => before default validation');
  void insertUser();
  void alterDefaultDoSomeBusinessLogic() => print('   => after default do some Business Logic');
}

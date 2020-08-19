import 'database.dart';

class Singleton {
  void call() {
    var primaryInstance = Database();
    print(
      '    => getting primary instance in address: ${primaryInstance.hashCode}',
    );
    var secondaryInstance = Database();
    print(
      '    => getting secondary instance in address: ${secondaryInstance.hashCode}',
    );

    var result = identical(primaryInstance, secondaryInstance);
    print(
      '    => comparison result between two instances is: ${result ? 'equals' : 'not equals'}',
    );
  }
}

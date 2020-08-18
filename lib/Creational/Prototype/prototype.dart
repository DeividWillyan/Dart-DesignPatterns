import 'car.dart';

class Prototype {
  void call() {
    var originalCar = Car(name: 'Impala', color: 'Red', board: 'ABC123');
    print('    => creating object... $originalCar');
    var copyCar = originalCar.clone();
    print(
      '    => comparison result is: ' +
          identical(originalCar, copyCar).toString(),
    );
  }
}

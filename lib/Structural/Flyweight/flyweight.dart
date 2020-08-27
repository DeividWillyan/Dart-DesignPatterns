import 'service/garage_service.dart';

class Flyweight {
  void call() {
    var garage = Garage();
    garage.addCarToGarage('ABC123', 0.000, 'RED', 'FORD', 'FIESTA');
    garage.addCarToGarage('GFS451', 2.0000, 'BLACK', 'FORD', 'FIESTA');
    garage.addCarToGarage('UNO001', 100.000, 'WHITE', 'FIAT', 'UNO');
    garage.addCarToGarage('TRS122', 10.000, 'RED', 'FORD', 'FIESTA');
    garage.addCarToGarage('ABD341', 8.000, 'BLACK', 'FIAT', 'UNO');

    garage.showsCarsInGarage();
  }
}

import 'car_model.dart';
import 'car_type_flyweight_factory.dart';

class Garage {
  final List<Car> _cars = [];

  void addCarToGarage(String board, double mileage, String color,
      String manufacturer, String model) {
    var type = CarTypeFlyweightFactory.getCarType(color, manufacturer, model);
    var car = Car(board, mileage, type);
    _cars.add(car);
  }

  void showsCarsInGarage() {
    _cars.forEach((c) => c.infoCar());
    print('    => quantity cars created: ${_cars.length}');
  }
}

import 'car_type_flyweight.dart';

class CarTypeFlyweightFactory {
  static final Map<String, CarTypeFlyweight> _typesCars = {};

  static CarTypeFlyweight getCarType(
      String color, String manufacturer, String model) {
    var carType = _typesCars[model];

    if (carType == null) {
      carType = CarTypeFlyweight(color, manufacturer, model);
      _typesCars.putIfAbsent(model, () => carType);
      print('    => quantity carTypeFlyweight created: ${_typesCars.length}');
    }

    return carType;
  }
}

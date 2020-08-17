import 'package:design_patterns/Creational/Abstract_Factory/car_factory.dart';
import 'package:design_patterns/Creational/Abstract_Factory/factories/fusca_factory.dart';
import 'package:design_patterns/Creational/Abstract_Factory/factories/impala_factory.dart';

class AbstractFactory {
  void call() {
    var _di = AbstractFactorySimulatorDI();
    var factory = AbstractFactorySimulator(_di.inject());
    factory.createCarEngine();
    factory.createCarColor();
  }
}

class AbstractFactorySimulator {
  final CarFactory _factory;
  AbstractFactorySimulator(this._factory);

  void createCarEngine() {
    _factory.engine().create();
  }

  void createCarColor() {
    _factory.color().paint();
  }
}

class AbstractFactorySimulatorDI {
  CarFactory inject() {
    var inputTypeCar = 'Fusca';
    CarFactory factory;

    if (inputTypeCar == 'Impala') {
      factory = ImpalaFactory();
    } else if (inputTypeCar == 'Fusca') {
      factory = FuscaFactory();
    } else {
      throw Exception('Type car not found.');
    }

    print('    => the car type selected is $inputTypeCar');

    return factory;
  }
}

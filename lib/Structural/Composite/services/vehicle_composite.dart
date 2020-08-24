import 'vehicle_service.dart';

class VehicleComposite implements Vehicle {
  List<Vehicle> children = [];
  void add(Vehicle vehicle) => children.add(vehicle);
  void remove(Vehicle vehicle) => children.remove(vehicle);

  @override
  String accelerate() {
    return '    => In Composite' +
        children.map((e) => '\n     ' + e.accelerate()).join();
  }
}

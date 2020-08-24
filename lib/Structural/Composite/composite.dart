import 'services/ferrari_service.dart';
import 'services/fusca_service.dart';
import 'services/vehicle_composite.dart';
import 'services/vehicle_service.dart';

class Composite {
  void call() {
    var allVehicles = <Vehicle>[];

    var primaryVehicle = Fusca();
    var secondaryVehicle = Ferrari();
    var vehicleGarage = VehicleComposite();
    var primaryVehicleGarage = Fusca();
    var secondaryVehicleGarage = Ferrari();
    vehicleGarage.add(primaryVehicleGarage);
    vehicleGarage.add(secondaryVehicleGarage);

    allVehicles.add(primaryVehicle);
    allVehicles.add(secondaryVehicle);
    allVehicles.add(vehicleGarage);

    allVehicles.forEach((vehicle) => print(vehicle.accelerate()));
  }
}

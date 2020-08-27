import 'car_type_flyweight.dart';

// extrinseco (mutável)
class Car {
  final String _board;
  final double _mileage;
  final CarTypeFlyweight _type;

  Car(this._board, this._mileage, this._type);

  void infoCar() => _type.infoCar(_board, _mileage);
}

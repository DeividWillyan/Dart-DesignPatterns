// intrísico (imutável)
class CarTypeFlyweight {
  final String _color;
  final String _manufacturer;
  final String _model;

  CarTypeFlyweight(this._color, this._manufacturer, this._model);

  void infoCar(String board, double mileage) => print(
      '        => car info: $board, $mileage, $_color, $_manufacturer, $_model');
}

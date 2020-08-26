import 'boleto_model.dart';

class BoletoTypeA implements Boleto {
  @override
  String getValue() => 'R\$ 10,90';
}

abstract class Combo {
  String pedir();
}

class DefaultCombo implements Combo {
  @override
  String pedir() => '    Combo contém:\n        -Lanche com Suco';
}

class ComboDecorator implements Combo {
  final Combo _combo;
  ComboDecorator(this._combo);

  @override
  String pedir() => _combo.pedir();
}

class ComboComBatata extends ComboDecorator {
  ComboComBatata(Combo combo) : super(combo);
  final String _adicionarBatata = '-Batata';

  @override
  String pedir() => super.pedir() + '\n        $_adicionarBatata';
}

class ComboComDoce extends ComboDecorator {
  ComboComDoce(Combo combo) : super(combo);

  final String _adicionarDoce = '-Chocolate';

  @override
  String pedir() => super.pedir() + '\n        $_adicionarDoce';
}

void main(List<String> args) {
  print('Escolhendo combo basico...');
  Combo meuCombo = DefaultCombo();
  print(meuCombo.pedir());

  print('\nAcrescentando Batata no combo basico...');
  print(ComboComBatata(meuCombo).pedir());

  print('\nAlterando Batata por Doce no combo basico...');
  print(ComboComDoce(meuCombo).pedir());

  print('\nAcrescentando Batata e Doce no combo basico...');
  print(ComboComBatata(ComboComDoce(meuCombo)).pedir());
}

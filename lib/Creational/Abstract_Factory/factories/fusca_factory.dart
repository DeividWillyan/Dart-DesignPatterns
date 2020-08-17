import '../car_factory.dart';

class FuscaFactory implements CarFactory {
  @override
  Engine engine() => FuscaEngine();

  @override
  Color color() => FuscaColor();
}

class FuscaEngine implements Engine {
  @override
  void create() => print('    => creating engine for fusca');
}

class FuscaColor implements Color {
  @override
  void paint() => print('    => the fusca is red color');
}

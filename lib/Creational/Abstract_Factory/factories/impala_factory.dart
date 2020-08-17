import '../car_factory.dart';

class ImpalaFactory implements CarFactory {
  @override
  Engine engine() => ImpalaEngine();

  @override
  Color color() => ImpalaColor();
}

class ImpalaEngine implements Engine {
  @override
  void create() => print('    => creating engine for impala.');
}

class ImpalaColor implements Color {
  @override
  void paint() => print('    => the impala is black color');
}

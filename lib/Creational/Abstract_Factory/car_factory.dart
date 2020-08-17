abstract class CarFactory {
  Engine engine();
  Color color();
}

abstract class Engine {
  void create();
}

abstract class Color {
  void paint();
}

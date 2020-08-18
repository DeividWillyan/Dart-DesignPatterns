class Car {
  String name;
  String color;
  String board;

  Car({
    this.name,
    this.color,
    this.board,
  });

  Car.fromSource(Car source) {
    name = source.name;
    color = source.color;
    board = source.board;
  }

  Car clone() {
    var cloned = Car.fromSource(this);
    print('    => cloning object... $cloned');
    return cloned;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Car && o.name == name && o.color == color && o.board == board;
  }

  @override
  int get hashCode => name.hashCode ^ color.hashCode ^ board.hashCode;

  @override
  String toString() => 'Car(name: $name, color: $color, board: $board)';
}

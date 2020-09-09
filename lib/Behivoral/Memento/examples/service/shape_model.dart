class Shape {
  double color;
  double height;
  double width;

  Shape(this.color, this.height, this.width);

  Shape.initial() {
    color = 0xFF121212;
    height = 150.0;
    width = 150.0;
  }

  Shape.copy(Shape shape) : this(shape.color, shape.height, shape.width);

  @override
  String toString() => 'Shape(color: $color, height: $height, width: $width)';
}

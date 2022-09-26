abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double _rectangle = 0;
  Rectangle(double x, double y) {
    _rectangle = (x * y);
  }

  @override
  double area() => _rectangle;
}

class Circle extends Shape {
  double _circle = 0;
  Circle(double x) {
    _circle = 3.14 * x * x;
  }
  @override
  double area() => _circle;
}

void main() {
  List<Shape> shapes = [
    Rectangle(10, 20),
    Rectangle(13, 40),
    Rectangle(17, 9),
    Circle(50),
    Circle(15),
    Circle(33),
  ];

  for (Shape shape in shapes) {
    print(shape.area());
  }
}

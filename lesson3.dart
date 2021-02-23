import 'dart:math';

// Shape shapeFactory({String type, num raduis=2, num side=2}) {
//   if (type == 'circle') return Circle(raduis);
//   if (type == 'square') return Square(side);
//   throw 'Can\'t create $type.';
// }

abstract class Shape {
  factory Shape({String type, num raduis=2, num side=2}) {
    if (type == 'circle') return Circle(raduis);
    if (type == 'square') return Square(side);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area;
  num radius;
}

main() {
  try{
    final circle = Shape(type: 'circle');
    final square = Shape(type: 'square', side: 6);
    print(circle.area);
    print(square.area);
  }
  catch (err){
    print(err);
  }
  
}
import 'dart:math';

Shape shapeFactory({String type, num raduis=2, num side=2}) {
  if (type == 'circle') return Circle(raduis);
  if (type == 'square') return Square(side);
  throw 'Can\'t create $type.';
}

abstract class Shape {
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

main() {
  try{
    final circle = shapeFactory(type: 'circle');
    final square = shapeFactory(type: 'square', side: 4);
    print(circle.area);
    print(square.area);
  }
  catch (err){
    print(err);
  }
  
}
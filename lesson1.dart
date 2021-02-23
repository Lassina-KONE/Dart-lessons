class Bicycle{
  int cadence;
  int _speed = 0;
  int gear;
  
//   constructors
  Bicycle(this.cadence,this.gear);
  
//   getter for speed identifier
  int get speed => _speed;
  
//   methods
  void applyBrake(int decrement) {
  _speed -= decrement;
}

void speedUp(int increment) {
  _speed += increment;
}
  
//   override toString for the class
  @override
  String toString() => 'Bicycle: $_speed mph';
  
}


  
void main() {
  
  for (int i = 0; i < 5; i++) {
    print('${Bicycle(2,1)}');
  }
}
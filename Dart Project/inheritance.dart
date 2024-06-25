class Vehicle {

  String _color;
  Vehicle(this._color);

  void getColor() {
    print("Vehicle color: $_color");
  }
}

class Car extends Vehicle {

  int _doors;
  
  Car(String color,this._doors) : super(color);
  
  void getNumberOfDoors() {
    print("Number of doors: $_doors");
  }
}

void main() {
 
  Vehicle vehicle = Vehicle("Red");
  vehicle.getColor();
  Car myCar = Car("Blue", 4);
  myCar.getColor();
  myCar.getNumberOfDoors();
}
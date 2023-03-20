void main() {
  Car redCar = Car();
  redCar.setColor = "red";
  String redCarColor = redCar.color;
  Car blueCar = Car();
  blueCar.setColor = "blue";
  String blueCarColor = blueCar.color;

  redCar.sayColor();
  blueCar.sayColor();
}

class Car {
  set setColor(String color) {
    this._color = color;
  }

  String get color => this._color;

  // ! Attribute
  late String _color;

  // ! Methoden
  void drive() {
    print("Car is moving.");
  }

  void sayColor() {
    print(this._color);
  }
}

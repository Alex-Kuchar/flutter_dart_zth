void main() {
  Car redCar = Car();
  redCar.color = "red";
  Car blueCar = Car();
  blueCar.color = "blue";

  redCar.sayColor();
  blueCar.sayColor();
}

class Car {
  // ! Attribute
  late String color;

  // ! Methoden
  void drive() {
    print("Car is moving.");
  }

  void sayColor() {
    print(this.color);
  }
}

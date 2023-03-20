void main() {
  Student student = Student();
  student.setSemester = 2;
  int semester = student.getSemester;

  student.setName = "Patrick";
  student.setAge = 20;
  student.study();
}

mixin Study {
  void study() {
    print("I am studying. 📚");
  }
}

class Person {
  late String _name;
  late int _age;

  // * Getter
  String get getName => this._name;
  int get getAge => this._age;

  // * Setter
  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  // * Methods
  void walk() {
    print("Person is walking.");
  }
}

class Student extends Person with Study {
  late int _semester;

  // * Getter
  int get getSemester => _semester;

  // * Setter
  set setSemester(int semester) {
    this._semester = semester;
  }

  // * Method
  void party() {
    print("One thing students like to do is partying. 🎉");
  }
}

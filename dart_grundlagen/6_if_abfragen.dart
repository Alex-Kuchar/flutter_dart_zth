void main() {
  //* IF-&&Else-IF Abfrage
  int age = 15;

  age = age - 3;

  print("Mal schauen, ob du in den Film darfst!");
  print(" ");

  if (age >= 18) {
    print("Du darfst in den Film.");
  } else if (age >= 16) {
    print("Glück gehabt, dass ich meinen Job nicht mag. Geh rein!");
  } else {
    print("Du darfst leider nicht in den Film.");
  }
}

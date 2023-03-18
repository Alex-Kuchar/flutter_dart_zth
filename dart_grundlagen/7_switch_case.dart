void main() {
  int age = 15;
  String name = "Alex";
  String surname = "Kuchar";

  print("Mal schauen wie Alt ich bin..");

  switch (age) {
    case 16:
      print("Ich bin 16!");
      break;
    case 15:
      print("Ich bin 15!");
      break;
    default:
      print("Du hast kein valides Alter angegeben.");
  }
  print("Oh, ich bin $age Jahre alt.");

  switch (name) {
    case "Alex":
      print("Yuhu! Ich heiße Alex!!");
      break;
    case "Kuchar":
      print("Nee, das ist mein Nachname.");
      break;
    default:
      print("Ich bin $name.");
  }
  if (name == "Alex") {
    print("Und nen Nachnamen hab ich auch! Der lautet $surname.");
  } else {
    print("Das ist falsch! Ich heiße Alex!");
  }
}

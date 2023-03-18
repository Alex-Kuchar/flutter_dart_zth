void main() {
  int age = 32;

  double myDoub = 4.4;

  bool myBool = true;

  // ! ############################################# //

  String myStr = "Der Ball";
  String mySndString = " ist Rot.";

  String verkettet = myStr + mySndString;
  print(verkettet);

  String multiline = ''' das
  ist
  ein
  String
  ''';

  print(multiline);

  int worth = 3;

  String example = "Der Wert ist: $worth";
  print(example);

  // ! Statische Typisierung
  int ageStatic = 32;

  double myDoubStatic = 4.4;

  bool myBoolStatic = true;

  String myStrStatic = "Der Ball";

  // ! Dynamische Typisierung
  var ageDynamic;
  ageDynamic = "Heyho!";
  ageDynamic = 23;

  var myDoubDynamic;
  myDoubDynamic = 4.4;

  var myBoolDynamic = true;

  var myStrDynamic = "Der Ball";

  dynamic var3;
  var3 = 13;
  var3 = "Dreizehn";
}

void main(List<String> arguments) {
  var varTrue = true;
  print(varTrue);
  print(!varTrue);

  bool varFalse = false;
  print(varFalse);
  print(!varFalse);

  print("------------------------------------------------------");
  print(varTrue == varFalse);
  print(varFalse == varTrue);
}

void main(List<String> arguments) {
  printName("Iran");
}

void printName(String name, {String sobrenome = ""}) {
  print("My name is $name.");
  if(sobrenome != ""){
  print("My lastname is $sobrenome.");
  }
}

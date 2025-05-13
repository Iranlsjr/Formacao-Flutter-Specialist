
void main(List<String> arguments) {
  printHelloWorld();
  printName("Iran");

  var number = returnNumber();
  print(number);

  var resultado = sum(9, 5);
  print(resultado);
}

void printHelloWorld() {
  print("---------------");
  print("Hello World!");
}

void printName(String name) {
  print("---------------");
  print("My name is: $name.");
}

int returnNumber() {
  print("---------------");
  return 30;
}

int sum(int number1, int number2) {
  print("---------------");
  return number1 + number2;
}

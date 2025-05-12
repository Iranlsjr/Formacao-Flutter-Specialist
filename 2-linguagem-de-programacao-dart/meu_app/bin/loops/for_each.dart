import 'dart:io';

void main(List<String> arguments) {
  var numeros = [1, 5, 9, 50, 85, 45, 90, 74];
  var acumulador = 0;
  for (var numero in numeros) {
    acumulador = acumulador + numero;
    print(numero);
  }
  print(acumulador);

print("--------------------------------");
  var letras = ["B", "A", "D"];
  for (var letra in letras) {
    print(letra);
  }
}

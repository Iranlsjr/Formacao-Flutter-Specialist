import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  var texto = "Meu primeiro bloco for";
  for (var i = 0; i < texto.length; i++) {
    print(texto[i]);
  }

  //lista
  var listaNomes = ["Iran", "Josy", "Duda"];
  for (var i = 0; i < listaNomes.length; i++) {
    print(listaNomes[i]);
  }

  // Soma número de Zero a cem
  var resultado = 0;
  for (var i = 1; i <= 100; i++) {
    resultado = resultado + i;
    print("$i - $resultado");
  }

//Digitando o número
  resultado = 0;
  var quantidade = 0;
  print("Informe a quantidade de números:  ");
  var line = stdin.readLineSync(encoding: utf8);
  quantidade = int.parse(line ?? "0");

  for (var i = 0; i < quantidade; i++) {
    print("Informe o número: ");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? "0");

    resultado = resultado + numero;
    print("$i - $resultado");
  }
}

import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
    print("Bem vindos a nossa calculadora!: ");

  print("Informe o primeiro número: ");
  //fazer a leitura
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo número: ");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matemática: (+, -, *, /)");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  double resultado = 0;

  if (operacao == "+") {
    resultado = numero1 + numero2;
  } else if (operacao == "-") {
    resultado = numero1 - numero2;
  } else if (operacao == "*") {
    resultado = numero1 * numero2;
  } else if (operacao == "/") {
    resultado = numero1 / numero2;
  } else {
    print("Operação inválida");
    exit(0);
  }
  print("Operação solicitada: $operacao");
  print("O resultado da operação é : $resultado");
}

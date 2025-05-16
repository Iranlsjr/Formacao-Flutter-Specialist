import 'dart:io';
import 'package:meu_app/functions/utils.dart' as utils;

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora!: ");

  //fazer a leitura + Resultado
  var numero1 = utils.lerConsoleDouble("Informe o primeiro número: ");

  var numero2 = utils.lerConsoleDouble("Informe o segundo número: ");

  var operacao = utils.lerConsole(
    "Informe a operação matemática: (+, -, *, /)",
  );

  calcular(operacao, numero1, numero2);
}

// FUNCTIONS
void calcular(String operacao, double numero1, double numero2) {
  //Switch Case
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = utils.soma(numero1, numero2);
      break;
    case "-":
      resultado = utils.multiplicacao(numero1, numero2);
    case "*":
      resultado = utils.multiplicacao(numero1, numero2);
    case "/":
      resultado = utils.divisao(numero1, numero2);
    default:
      print("Operação inválida");
      exit(0);
  }

  print("Operação solicitada: $operacao");
  print("O resultado da operação é : $resultado");
}

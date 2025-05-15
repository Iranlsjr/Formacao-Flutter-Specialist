import 'package:desafio_calculadora_imc/models/console_utils.dart';
//import 'package:desafio_calculadora_imc/classes/pessoa.dart';

void calculadoraImc() {
  print("-------------------------");
  print("| Calculando o seu IMC! |");
  print("-------------------------");

  //Mostrar mensagem para o usuário
  String nome = ConsoleUtils.lerStringComTexto("Informe o seu nome: ");

  double peso = ConsoleUtils.lerPesoEAlturaComNumero("Digite seu peso: ");

  double altura = ConsoleUtils.lerPesoEAlturaComNumero("Digite sua altura: ");

  print("------------------------------------------------------------");

  double imc = peso / (altura * altura);
  if (imc < 16) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com magreza grave.",
    );
  } else if ((imc > 16) && (imc < 17)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com magreza moderada.",
    );
  } else if ((imc > 17) && (imc < 18.5)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com magreza leve.",
    );
  } else if ((imc > 18.5) && (imc < 25)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está saudável.",
    );
  } else if ((imc > 25) && (imc < 30)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com sobrepeso.",
    );
  } else if ((imc > 30) && (imc < 35)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com obesidade Grau I.",
    );
  } else if ((imc > 35) && (imc < 40)) {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com Obesidade II(severa).",
    );
  } else {
    print(
      "$nome seu IMC é de : ${imc.toStringAsFixed(2)}. Você está com obesidade Grau III(mórbida).",
    );
  }
  print("------------------------------------------------------------");
}

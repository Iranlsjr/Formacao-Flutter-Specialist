import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
   //Fazer leitura no terminal - Importar a  biblioteca
  // Fazer leitura para "Prova1"
  print("Informe a primeira nota: ");
  var line = stdin.readLineSync(encoding: utf8);
  // Quando tiver ccerteza que esta comparando com nulo pode utilizar desta forma = int.parse(line ?? "0")
  var prova1 = int.parse(line ?? "0");

  // Fazer leitura para "Prova2"
  print("Informe a segunda nota: ");
  line = stdin.readLineSync(encoding: utf8);
  var prova2 = int.parse(line ?? "0");

    print("--------------------------------------------");
  print("A primeira nota é: $prova1");
  print("A segunda nota é: $prova2");

  //Calcular a média
  print("-------------------IF NORMAL-------------------------");
  var media = (prova1 + prova2) / 2;
  if (media >= 7) {
    print("O aluno(a) tirou a nota $media está Aprovado(a)!");
  } else if (media >= 5) {
    print("O aluno(a) tirou a nota $media está de recuperação(a)!");
  } else {
    print("O aluno(a) tirou a nota $media está repovado(a)!");
  }

  //if ternario
  print("------------------IF TERNÁRIO-------------------------");
  var resultado =
    (prova1 >= 7)
      ? "O aluno(a) tirou a nota $media está Aprovado(a)!"
    : "O aluno(a) tirou a nota $media está repovado(a)!";
  print(resultado);
  

  //if (prova1 >= 7) {
  //  resultado = "";
  // } else {
  //  resultado = "";
  // }
}

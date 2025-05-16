import 'dart:io';

import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas.");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno(a)");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (nomeInvalidoException) {
    print(nomeInvalidoException);
    exit(0);
  }

  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
      "Digite a nota ou 'S' para sair",
      "S",
    );
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas());
  print("A média do aluno foi: ${aluno.retornaMedia()}");

  if (aluno.aprovado(7)) {
    print("O aluno(a) ${aluno.getNome()} está aprovado(a)!");
  } else {
    print("O aluno(a) ${aluno.getNome()} está reprovado(a)!");
  }
}

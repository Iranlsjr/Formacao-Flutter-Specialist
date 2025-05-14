import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas.");
  String nome = consoleUtils.lerStringComTexto("Digite o nome do aluno(a)");
  var aluno = Aluno(nome);
}


 // print("Sistema de Notas: ");
  
  //Tratamento de erro
  //try {
   // double numero = double.parse(line ?? "");
   // print(numero);
  //} catch (e) {
   // print("Número Inválido, seu digito foi: '$line'");
  //}finally{
   // print("Executando finally");
  //}
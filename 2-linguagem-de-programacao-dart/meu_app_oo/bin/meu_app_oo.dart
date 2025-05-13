import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';

void main(List<String> arguments) {
  //método Construtor.
  var p1 = Pessoa("Iran", "Rua 1");
  // Método sem construtor
  //p1.setNome("Iran");
  //p1.setEndereco("Rua 1");
  print(p1);

  //Herança
  var pessoaFisica1 = PessoaFisica("Iran", "Rua 1", "22222222");
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Empresa 1", "Rua 2", "11111111");
  print(pessoaJuridica1);
}

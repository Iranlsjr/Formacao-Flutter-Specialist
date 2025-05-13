import 'package:meu_app_oo/classes/pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  p1.setNome("Iran");
  p1.setEndereco("Rua 1");
  
  print(p1.getNome());
  print(p1.getEndereco());
}

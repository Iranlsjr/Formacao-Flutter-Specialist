import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("Iran", "Rua 1", "22222222");
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Empresa 1", "Rua 2", "11111111", tipoNotificacao: TipoNotificacao.email);
  print(pessoaJuridica1);
}
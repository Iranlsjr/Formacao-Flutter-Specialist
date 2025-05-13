import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  //Criando Get
  //CPF
  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  //Construtor
  PessoaFisica(String nome, String endereco, String cpf, {TipoNotificacao tipoNotificacao= TipoNotificacao.nenhum})
    : super(nome, endereco, tipoNotificacao:  tipoNotificacao) {
    _cpf = cpf;
  }

  //Sobrescrever
  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
  }
}

import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  //Criando Get
  //CNPJ
  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  //Construtor
  PessoaJuridica(
    String nome,
    String endereco,
    String cnpj,
    {TipoNotificacao tipoNotificacao= TipoNotificacao.nenhum}
  ) : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  //Sobrescrever
  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CNPJ": _cnpj,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
  }
}

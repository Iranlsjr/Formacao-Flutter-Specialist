import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.nenhum;

  //Criando Get
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  //recebendo notificações
  //Email
  void setEMail(String email) {
    _email = email;
  }

  String getEmail() {
    return _celular;
  }

  //Celular
  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _email;
  }

  //Token
  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  //Construtor
  Pessoa(
    String nome,
    String endereco, {
    TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum,
  }) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  //Sobrescrever
  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "TipoNotificacao": _tipoNotificacao,
    }.toString();
  }
}

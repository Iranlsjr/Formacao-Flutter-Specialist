class PessoaJuridica {
  String _nome = "";
  String _endereco = "";
  String _cnpj = "";

  void setNome(String nome) {
    _nome = nome;
  }

  //Criando Get
  String getNome() {
    return _nome;
    //return _nome.toUpperCase();
  }

  // Endereço
  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  //CNPJ
  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  //Construtor

  PessoaJuridica(String nome, String endereco, String cnpj) {
    _nome = nome;
    _endereco = endereco;
    _cnpj = cnpj;
  }

  //Sobrescrever
  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "CNPJ": _cnpj,
    }.toString();
  }
}

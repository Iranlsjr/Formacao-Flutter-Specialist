class PessoaFisica {
  String _nome = "";
  String _endereco = "";
  String _cpf = "";

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

  //CPF
  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  //Construtor

  PessoaFisica(String nome, String endereco, String cpf) {
    _nome = nome;
    _endereco = endereco;
    _cpf = cpf;
  }

  //Sobrescrever
  @override
  String toString() {
    return {"Nome": _nome, "Endereço": _endereco, "CPF": _cpf}.toString();
  }
}

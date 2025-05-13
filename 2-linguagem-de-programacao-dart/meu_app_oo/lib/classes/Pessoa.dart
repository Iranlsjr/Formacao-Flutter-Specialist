class Pessoa {
  String _nome = "";
  String _endereco = "";

  void setNome(String nome) {
    _nome = nome;
  }

  //Criando Get
  String getNome() {
    return _nome;
    //return _nome.toUpperCase();
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }
}



double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("O valor do produto não pode ser Zero!");
  } else if (desconto <= 0) {
    throw ArgumentError("O valor do desconto não pode ser Zero!");
  } else if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}

String convertToUpper(String texto) {
  return texto.toUpperCase();
}

double retornaValor(double valor) {
  return valor;
}



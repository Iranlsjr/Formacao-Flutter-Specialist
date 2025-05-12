void main(List<String> arguments) {
  String texto1 = "Texto 1";
  var texto2 = "Texto 2";

  print("Imprime no console");
  print(texto1);
  print(texto2);

  print("------------------------------------------------------");
  print("Comparação se está de vazio");
  print(texto1.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty); //Aqui contem um espaço

  print("------------------------------------------------------");
  print("Obtem o tamanho da String");
  print(texto2.length);

  print("------------------------------------------------------");
  print("Maiuscula / Minuscula");
  print(texto1.toUpperCase());
  print(texto2.toLowerCase());

  print("------------------------------------------------------");
  print("Se uma String contem na outra");
  print(texto1.contains(texto2));
  print(texto1.contains(texto2.toLowerCase()));

  print("------------------------------------------------------");
  print("Obtem parte da String");
  print(texto2.substring(5));
  print(texto2.substring(1, 5));

  print("------------------------------------------------------");
  print("Obtem posição de um texto em uma String");
  print(texto2.indexOf("Flutter"));
  print(texto2.indexOf("T"));
  print(texto2.indexOf("@"));

  print("------------------------------------------------------");
  print("Subtitui uma String em outra");
  print(texto2.replaceAll("o", "@"));

  print("------------------------------------------------------");
  print("Quebra uma String por um caracter especifico");
  print(texto2.split("o"));
  print("NOME;ENDERECO;CEP".split(";"));

  print("------------------------------------------------------");
  print("Remove espações");
  print(" dio  ".trim());
  print("   dio  ".trimLeft());
  print("   dio  ".trimRight());
  print("------------------------------------------------------");
}

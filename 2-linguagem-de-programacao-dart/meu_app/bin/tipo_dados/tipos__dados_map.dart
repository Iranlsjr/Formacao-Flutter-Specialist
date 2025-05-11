void main(List<String> arguments) {
  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {'zero': 0, 'one': 1, 'two': 2};

  print(map1);
  print(map);
  print("------------------------------------------------------");
  print("Obtem valor pela chave");
  print(map["one"]);

  print("------------------------------------------------------");
  print("Adicionar chave");
  map.addAll({'ten': 10, 'eleven': 11});
  print(map);

  print("------------------------------------------------------");
  print("Se vazio");
  print(map.isNotEmpty); //não está vazio
  print(map1.isEmpty); //  Está vazio

  print("------------------------------------------------------");
  print("Tamanho da lista");
  print(map.length);

  print("------------------------------------------------------");
  print("Contem chave");
  print(map.containsKey("eleven"));
  print(map.containsKey("teste"));
  
}

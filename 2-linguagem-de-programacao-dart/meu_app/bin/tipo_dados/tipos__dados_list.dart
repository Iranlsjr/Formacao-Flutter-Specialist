void main(List<String> arguments) {
  List<String> lstString = [];
  var lstInt = [1, 10, 50];
  List listDynamic = [];

  print("Tamanho da lista");
  print(lstString.length);
  print(lstInt.length);
  print(listDynamic.length);

  print("------------------------------------------------------");
  print(lstString);
  print(lstInt);
  print(listDynamic);

  print("------------------------------------------------------");
  print("Adicionar item");

  print("------------------------------------------------------");
  print("Add String");
  lstString.add("M");
  lstString.add("B");
  print(lstString);

  print("------------------------------------------------------");
  print("Add  inteiro");
  lstInt.add(900000);
  print(lstInt);

  print("------------------------------------------------------");
  print("Add Dynamic");
  listDynamic.add("A");
  listDynamic.add(10);
  listDynamic.add(9.5);
  listDynamic.add(true);
  print(listDynamic);

  print("------------------------------------------------------");
  print("Remover item");
  lstString.remove("M");
  print(lstString);

  lstInt.remove(1);
  print(lstInt);

  listDynamic.remove(9.5);
  print(listDynamic);

  print("------------------------------------------------------");
  print("Verifica se a lista etá ou não vazia");
  print(lstString.isEmpty); //não está vazia
  print(lstInt.isEmpty);
  print(listDynamic.isEmpty);

  print("------------------------------------------------------");
  print("Ve se o valor contem na lista");
  print(lstString.contains("B"));
  print(listDynamic.contains(true));

  print("------------------------------------------------------");
  print("Função where");
  print(lstInt);
  print(lstInt.where((x) => x > 9 && x < 9900000));

  print("------------------------------------------------------");
  print("Outras Funções");
  print(lstInt.reversed); // inverte a ordem da lista
}

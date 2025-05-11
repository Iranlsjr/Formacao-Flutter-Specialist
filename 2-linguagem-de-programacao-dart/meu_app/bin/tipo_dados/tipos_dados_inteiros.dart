//import 'package:meu_app/meu_app.dart' as meu_app;

void main(List<String> arguments) {
  int numero1 = 10;
  var numero2 = 11;

  print("Retorna verdadeiro se e somente se esse interio for par");
  print(numero1.isEven);
  print(numero2.isEven);
  print("------------------------------------------------------");
  print("Retorna verdadeiro se é somente se este inteio for ímpar");
  print(numero1.isOdd);
  print(numero2.isOdd);
  print("------------------------------------------------------");
  print("Retorna se o número é finito");
  print(numero1.isFinite);
  print(numero2.isFinite);
  print("------------------------------------------------------");
  print("Retorna se o número é infinito");
  print(numero1.isInfinite);
  print(numero2.isInfinite);
  print(double.infinity);
  print("------------------------------------------------------");
  print("Retorna se o número não é um número válido");
  print(numero1.isNaN);
  print(numero2.isNaN);
  print("------------------------------------------------------");
  print("Retorna se o número é negativo");
  print((numero1).isNegative);
  print((numero2 * -1).isNegative);
  print("------------------------------------------------------");
  print("Converte String para inteiro");
  print((int.parse("10")));
  //print(int.parse("teste"));
  print((int.tryParse("teste")));

  //print('Hello world: ${meu_app.calculate()}!');
}

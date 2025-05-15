import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  //Mostrar mensagem para o usuário
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  //Ler uma entrada do usuário via teclado
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  //Ler Peso e Altura
  static double lerPesoEAlturaComNumero(String texto) {
    print(texto);
    return lerPesoEAltura();
  }

  //Ler uma entrada do usuário via teclado
  static double lerPesoEAltura() {
    var entrada = stdin.readLineSync(encoding: utf8);
    return double.tryParse(entrada ?? "") ?? 0.0;
  }

  //Ler Números digitados pelo usuário

  //static double? lerDouble() {
  //var value = lerString();
  //try {
  //return double.parse(value);
  //} catch (e) {
  //return null;
  //}
}

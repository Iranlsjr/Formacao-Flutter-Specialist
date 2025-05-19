import 'dart:math' as math;

class GeradorNumeroAleatorioService {
    // funcao para gerar numero
  static gerarnumeroAleatorio(int numeroMaximo) {
    math.Random numeroAleatorio = math.Random();
    return numeroAleatorio.nextInt(numeroMaximo);
  }
}
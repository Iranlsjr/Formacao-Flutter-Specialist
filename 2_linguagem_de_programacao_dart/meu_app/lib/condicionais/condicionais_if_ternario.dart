void main(List<String> arguments) {
  var prova1 = 5;
  var prova2 = 5;

  var media = (prova1 + prova2) / 2;

  if (media >= 7) {
    print("O aluno(a) tirou a nota $media está Aprovado(a)!");
  } else if (media >= 5) {
    print("O aluno(a) tirou a nota $media está de recuperação(a)!");
  } else {
    print("O aluno(a) tirou a nota $media está repovado(a)!");
  }

  //if ternario
  var resultado =
      (prova1 >= 7)
          ? "O aluno(a) tirou a nota $media está Aprovado(a)!"
          : "O aluno(a) tirou a nota $media está repovado(a)!";
  //if (prova1 >= 7) {
  //  resultado = "";
  // } else {
  //  resultado = "";
  // }
  print(resultado);
}

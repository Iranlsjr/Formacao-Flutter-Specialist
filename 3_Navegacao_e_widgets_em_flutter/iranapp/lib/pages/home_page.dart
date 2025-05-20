import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iranapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  // Quantidade de vezes que botao foi clicado
  var quantidadeClique = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App Mega",
          // style: GoogleFonts.pacifico(),
        ),
      ),
      //Corpo do app
      body: Container(
          width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Ações do usuário",
            style: GoogleFonts.acme(fontSize: 20),),
            Text(
              "Foi clicado $quantidadeClique vezes",
              style: GoogleFonts.acme(fontSize: 20),
            ),
        
            Text(
              "O número gerado é: $numeroGerado",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [            
                Container(
                  color: Colors.red,
              child: Text(
              "10",
              style: GoogleFonts.acme(fontSize: 20),
            ),

                ),
            
            Container(
              color: Colors.blue,
            child: Text(
              "20",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            ),
            
            Container(
              color: Colors.amber,
             child: Text(
              "30",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            ),
            ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red, //Cor de fundo do botão
        child: const Icon(
          Icons.add_box,
          color: Colors.white, //Cor o ícone do botão
        ),
        onPressed: () {
          setState(() {
            quantidadeClique = quantidadeClique + 1;
            numeroGerado = GeradorNumeroAleatorioService.gerarnumeroAleatorio(
              60,
            );
          });
        },
      ),
    );
  }
}

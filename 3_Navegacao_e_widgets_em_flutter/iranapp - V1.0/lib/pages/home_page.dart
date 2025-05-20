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

            Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
              child: Text("Ações do usuário",style: GoogleFonts.acme(fontSize: 20),
              ),
            ),

            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
                child: Text(
                  "Foi clicado $quantidadeClique vezes",
                  style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),

            Container(
            
              width: double.infinity,
              color: Colors.indigo,
              child: Text(
                "O número gerado é: $numeroGerado",
                style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
           
           

            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        child: Text("Nome:", style: GoogleFonts.acme(fontSize: 20)),
                      ),
                    ),
                
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.blue,
                        child: Text(
                          "Iran Lourenço",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                        child: Text("30", style: GoogleFonts.acme(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

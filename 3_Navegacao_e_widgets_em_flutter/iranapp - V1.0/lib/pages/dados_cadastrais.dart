import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({super.key});

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus Dados Cadastrais"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Nome", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
          TextField(
            controller: nomeController,
          ),
          TextButton(onPressed: (){
            print(nomeController.text);
          }, child: Text("Salvar"))
          ],
            ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iranapp/shared/widgets/text_label.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({super.key});

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");

  DateTime? dataNascimento;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus Dados Cadastrais"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLabel(texto: "Nome"),
          TextField(
            controller: nomeController,
          ),

          //DATA NASCIMENTO
          SizedBox(height: 10,),
          TextLabel( texto: "Data de Nascimento"),
          TextField(
            controller: dataNascimentoController,
            readOnly: true,
            onTap: () async{
              var data = await showDatePicker(context: context,
              initialDate: DateTime(2000,1,1),
              firstDate: DateTime(1900,5,20), 
              lastDate: DateTime(2023,10,23));
              if (data != null){
                dataNascimentoController.text = data.toString();
                dataNascimento = data;
              }
            },
          ),

          //BOTÃO SALVAR
          TextButton(onPressed: (){
            print(nomeController.text);
            print(dataNascimento);
          }, child: Text("Salvar"))
          ],
            ),
      ),
    );
  }
}
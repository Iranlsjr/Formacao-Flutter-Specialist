import 'package:flutter/material.dart';
import 'package:iranapp/repositories/nivel_repository.dart';
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
  var nivelRepository = NivelRepository();
  var niveis = [];
  var nivelSelecionado = "";

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLabel(texto: "Nome"),
            TextField(controller: nomeController),

            //DATA NASCIMENTO
            TextLabel(texto: "Data de Nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(1900, 5, 20),
                  lastDate: DateTime(2023, 10, 23),
                );
                if (data != null) {
                  dataNascimentoController.text = data.toString();
                  dataNascimento = data;
                }
              },
            ),

            //NÍVEL DE EXPERIÊNCIA
            TextLabel(texto: "Nível de Experiência"),
            Column(
              children:
                  niveis
                      .map(
                        (nivel) => RadioListTile(
                          title: Text(nivel.toString()),
                          selected: nivelSelecionado == nivel,
                          value: nivel.toString(),
                          groupValue: nivelSelecionado,
                          onChanged: (value) {
                            setState(() {
                            nivelSelecionado = value.toString();
                            });
                          },
                        ),
                      )
                      .toList(),
            ),

            //BOTÃO SALVAR
            TextButton(
              onPressed: () {
                print(nomeController.text);
                print(dataNascimento);
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}

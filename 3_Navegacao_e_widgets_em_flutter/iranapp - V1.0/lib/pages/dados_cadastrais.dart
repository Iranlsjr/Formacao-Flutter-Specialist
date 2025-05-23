import 'package:flutter/material.dart';
import 'package:iranapp/repositories/linguagens_repository.dart';
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
  var linguagensRepository = LinguagensRepository();
  var linguagens = [];
  var linguagensSelecionadas = [];
  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            TextLabel(texto: "Nome"),
            TextField(controller: nomeController),

            //DATA NASCIMENTO --------------------------------------------------------------------------------------
            TextLabel(texto: "Data de Nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2007, 1, 01),
                  lastDate: DateTime(5000, 12, 01),
                );
                if (data != null) {
                  dataNascimentoController.text = data.toString();
                  dataNascimento = data;
                }
              },
            ),

            //NÍVEL DE EXPERIÊNCIA------------------------------------------------------
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

            //LINGUAGENS CHECKBOX ----------------------------------------------------
            TextLabel(texto: "Linguagens"),
            Column(
              children:
                  linguagens
                      .map(
                        (linguagem) => CheckboxListTile(
                          title: Text(linguagem),
                          value: linguagensSelecionadas.contains(linguagem),
                          onChanged: (bool? value) {
                            setState(() { 
                            if (value!){
                              linguagensSelecionadas.add(linguagem);
                            } else  {
                              linguagensSelecionadas.remove(linguagem);
                            }
                            });
                          },
                        ),
                      )
                      .toList(),
            ),

            //BOTÃO SALVAR----------------------------------------------------------------
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

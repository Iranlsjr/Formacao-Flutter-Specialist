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
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;

  //CARREGANDO SALVAMENTO
  bool salvando = false;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  //RETORNAR ANOS DE EXPERIENCIA
  List<DropdownMenuItem> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem>[];
    for (var i = 0; i < quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(child: Text(i.toString()), value: i));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child:
            salvando
                ? Center(child: CircularProgressIndicator())
                : ListView(
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
                    Column(
                      children: [TextLabel(texto: "Nível de Experiência")],
                    ),
                    Divider(),
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
                    Divider(),
                    Column(children: [TextLabel(texto: "Linguagens")]),
                    Divider(),
                    Column(
                      children:
                          linguagens
                              .map(
                                (linguagem) => CheckboxListTile(
                                  title: Text(linguagem),
                                  value: linguagensSelecionadas.contains(
                                    linguagem,
                                  ),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      if (value!) {
                                        linguagensSelecionadas.add(linguagem);
                                      } else {
                                        linguagensSelecionadas.remove(
                                          linguagem,
                                        );
                                      }
                                    });
                                  },
                                ),
                              )
                              .toList(),
                    ),

                    // TEMPO DE EXPERIÊNCIA--------------------------------------------------------
                    Divider(),
                    Column(
                      children: [
                        TextLabel(texto: "Tempo de Experiência em Anos"),
                      ],
                    ),
                    DropdownButton(
                      value: tempoExperiencia,
                      isExpanded: true,
                      items: returnItens(50),
                      onChanged: (value) {
                        setState(() {
                          tempoExperiencia = int.parse(value.toString());
                        });
                      },
                    ),

                    // PRETENÇÃO SALARIAL --------------------------------------------------------------
                    Divider(),
                    Column(
                      children: [
                        TextLabel(
                          texto:
                              "Pretenção Salárial. R\$ ${salarioEscolhido.toStringAsFixed(2).toString()}",
                        ),
                      ],
                    ),
                    Divider(),
                    Slider(
                      min: 0,
                      max: 15000,
                      value: salarioEscolhido,
                      onChanged: (double value) {
                        setState(() {
                          salarioEscolhido = value;
                        });
                      },
                    ),

                    //BOTÃO SALVAR----------------------------------------------------------------
                    TextButton(
                      onPressed: () {
                        //CARREGAMENTO
                        setState(() {
                          salvando = false;
                        });
                        //VALIDAÇÃO DO NOME
                        if (nomeController.text.trim().length < 3) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Digite seu nome")),
                          );
                          return;
                        } // VALIDAÇÃO DE DATA DE NASCIMENTO
                        else if (dataNascimento == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Escolha sua data de Nascimento"),
                            ),
                          );
                          return;
                        } //VALIDAÇÃO DE NÍVEL DE EXPERIÊNCIA
                        else if (nivelSelecionado.trim() == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("O nível deve ser selecionado"),
                            ),
                          );
                          return;
                        }
                        //VALIDAÇÃO DE LINGUAGENS
                        else if (linguagensSelecionadas.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Selecione pelo menos uma linguagen",
                              ),
                            ),
                          );
                          return;
                        }
                        //VALIDAÇÃO DE TEMPO DE EXPERIÊNCIA
                        else if (tempoExperiencia == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Deve ter ao menos um ano de experiência.",
                              ),
                            ),
                          );
                          return;
                        }
                        //VALIDAÇÃO DE PRETENÇÃO SALARIAL
                        else if (salarioEscolhido == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                " A pretenção salárial deve ser maior que Zero",
                              ),
                            ),
                          );
                          return;
                        }

                        //TELA DE CARREGAMENTO QUANDO SALVAR
                        setState(() {
                          salvando = true;
                        });
                        Future.delayed(Duration(seconds: 2), () {

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Center(child: Text("Dados salvos com sucesso")),
                            ),
                          );
                          setState(() {
                            salvando = false;
                          });
                          Navigator.pop(context);
                        });

                        debugPrint("Dados Salvos");
                      },
                      child: Text("Salvar"),
                    ),
                  ],
                ),
      ),
    );
  }
}

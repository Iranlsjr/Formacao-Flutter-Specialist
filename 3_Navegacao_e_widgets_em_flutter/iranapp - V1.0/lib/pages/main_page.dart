import 'package:flutter/material.dart';
import 'package:iranapp/pages/configuracoes.dart';
import 'package:iranapp/pages/dados_cadastrais.dart';
import 'package:iranapp/pages/pagina1.dart';
import 'package:iranapp/pages/pagina2.dart';
import 'package:iranapp/pages/pagina3.dart';
import 'package:iranapp/pages/termos_de_uso_e_privacidade.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Main Page")),

        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text("Dados Cadastrais"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => DadosCadastraisPage(
                              texto: "Dados Cadastrais",
                              dados: ["Nome", "Endereco"],
                            ),
                      ),
                    );
                  },
                ),
                Divider(),

                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text("Termos de Uso E Privacidade"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermosDeUsoEPrivacidade(),
                      ),
                    );
                  },
                ),

                Divider(),
                SizedBox(height: 10),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text("Configurações"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Configuracoes()),
                    );
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: [Pagina1Pages(), Pagina2Pages(), Pagina3Pages()],
              ),
            ),
            BottomNavigationBar(
              onTap: (value) {
                controller.jumpToPage(value);
              },
              currentIndex: posicaoPagina,
              items: [
                BottomNavigationBarItem(label: "Pag1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "Pag2", icon: Icon(Icons.add)),
                BottomNavigationBarItem(
                  label: "Pag3",
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

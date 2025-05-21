import 'dart:async';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  //Foto
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                        flex: 4,
                        child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                        ),
                      ),
                      Expanded(child: Container()),
                      //Icon(Icons.person, size: 150, color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Já tem cadastro?",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Faça seu login e make the change_",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  //CAMPO EMAIL
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    //color: Colors.green,
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 63, 133, 26),
                          ),
                        ),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 63, 133, 26),
                        ),
                      ),
                      //  children: [
                      //Expanded(flex:2, child: Text("Informe seu e-mail: ", style: TextStyle(color: Colors.white, fontSize: 14),)),
                      // Expanded(flex: 3, child: Text("E-mail", style: TextStyle(color: Colors.white, fontSize: 14),)),
                      // ],
                    ),
                  ),
                  //Senha
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    //color: Colors.green,
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      onChanged: (value) {
                        senha = value;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 63, 133, 26),
                          ),
                        ),
                        hintText: "Senha",
                        hintStyle: TextStyle(color: Colors.white),

                        prefixIcon: Icon(
                          Icons.lock,
                          color: const Color.fromARGB(255, 63, 133, 26),
                        ),

                        suffixIcon: Icon(
                          Icons.visibility,
                          color: const Color.fromARGB(255, 63, 133, 26),
                        ),
                      ),
                      //children: [
                      //Expanded(flex: 2, child: Text("Informe a Senha:", style: TextStyle(color: Colors.white, fontSize: 14))),
                      //Expanded(flex: 3, child: Text("Senha", style: TextStyle(color: Colors.white, fontSize: 14))),
                      //],
                    ),
                  ),

                  //botão
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),

                    height: 40,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print(email);
                          print(senha);
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 63, 133, 26),
                          ),
                        ),
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),

                    //                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                  SizedBox(height: 20),
                  //  ESQUECI A SENHA
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      "Esqueci Minha Senha",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                  ),

                  //CADASTRA-SE
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 63, 133, 26),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

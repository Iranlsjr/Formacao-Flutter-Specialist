import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 71, 8, 8),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              //Foto
              Container(width: 150, height: 150, color: Colors.green, child: 
              Icon(Icons.person, size: 150, color: Colors.white,),),
              //Email
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                //color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  
                  children: [
                    Expanded(flex:2, child: Text("Informe seu e-mail: ", style: TextStyle(color: Colors.white, fontSize: 14),)),
                    
                    Expanded(flex: 3, child: Text("E-mail", style: TextStyle(color: Colors.white, fontSize: 14),)),
                  ],
                ),
              ),
              //Senha
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                //color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a Senha:", style: TextStyle(color: Colors.white, fontSize: 14))),
                    Expanded(flex: 3, child: Text("Senha", style: TextStyle(color: Colors.white, fontSize: 14))),
                  ],
                ),
              ),

              //botão
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.blueGrey,
                height: 30,
                alignment: Alignment.center,
                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 20),
              //Cadastro
              //              SizedBox(height: 10,),
              Container(
              
                margin: EdgeInsets.symmetric(horizontal: 30),
                
                height: 30,
                alignment: Alignment.center,
                child: Text("Cadastre-se", style: TextStyle(color: Colors.white, fontSize: 25),), 
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

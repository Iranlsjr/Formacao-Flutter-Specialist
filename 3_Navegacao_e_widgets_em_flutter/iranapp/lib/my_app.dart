import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:iranapp/pages/home_page.dart';
import 'package:iranapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.red),
      textTheme: GoogleFonts.pacificoTextTheme() //Aplica em todo o texto
      ),
      home: LoginPage(),
    );
  }
}

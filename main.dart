import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetolista/pages/ex1_soma_page.dart';
import '/pages/home_page.dart';

void main() {
  runApp(const listaApp());
}

class listaApp extends StatelessWidget {
  const listaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercícios Flutter',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 250, 6, 87),
      ),
      initialRoute: '/',
      routes:{
        '/': (context)=> const HomePage(),
        '/ex1-soma': (context)=> const Ex1SomaPage(),
      }
      );
  }
}

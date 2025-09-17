import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Exercícios')),
      body: ListView(
        children: [
          ListTile(
             leading: const CircleAvatar(child: Text('1')),
             title: const Text('Exercício 01'),
             trailing: const Icon(Icons.chevron_right),
             onTap: () => Navigator.pushNamed(context, '/ex1-soma'),
          ),

         ListTile(
             leading: const CircleAvatar(child: Text('2')),
             title: const Text('Exercício 02'),
             trailing: const Icon(Icons.chevron_right),
             onTap: () => Navigator.pushNamed(context, '/ex1-soma'),
          )
        ],
      ),
    );
  }
}

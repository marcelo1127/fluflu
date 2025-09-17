import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Ex1SomaPage());
}

class Ex1SomaPage extends StatefulWidget {
  const Ex1SomaPage({super.key});

@override
State<Ex1SomaPage> createState() => _Ex1SomaPageState();
 


}


class _Ex1SomaPageState extends State<Ex1SomaPage>{

final n1 = TextEditingController();
final n2 = TextEditingController();

double? result;
void _somar(){
final a = double.tryParse(n1.text);
final b = double.tryParse(n2.text);

if (a==null || b==null) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Por favor digite números válidos.')));
  return;
}
setState(() {
result = a + b;  
});
}


  @override
  Widget build(BuildContext context) {


      final textoResultado = (result == null) ? 'Informe números para que possamos somar ' : 'Resultado ${result!.toStringAsFixed(2)}'; 



    return Scaffold(
      appBar : AppBar(title:const Text('Ex 1 -  soma de dois números')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const Text ('Digita ai dois números , right now' ,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.pink,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              //backgroundColor: Colors.amber,
            ),
            ),

            SizedBox(height: 70),
        TextField(
          controller: n1,
          decoration: InputDecoration(
            labelText: 'Primeiro número : ',
            border: OutlineInputBorder(

            ),
          ),
        ),

              SizedBox(height: 70),

         TextField(
          controller: n2,
          decoration: InputDecoration(
            labelText: 'Segundo número : ',
            border: OutlineInputBorder(

            ),
          ),
        ),


SizedBox(height: 70),
        ElevatedButton.icon(onPressed: _somar, 
        icon: const Icon(Icons.add),
        label : const Text('Somar')
        ), 



        Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  textoResultado,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),


            
          ],
        ),
      ),
    );
  }
}

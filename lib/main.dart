import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Somador',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 177, 234, 140)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Somador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result = "reposta";

  void _incrementCounter() {
    setState(() {
      _counter++;

      _result = _counter.toString();
    });
  }

//////////////////////////////////// DESAFIO 12 ///////////////////////////////////////////////////

  void _desafio12() {
    List<int> numeros = [];
    Random random = Random();

    for (int i = 0; i < 10; i++) {
      numeros.add(random.nextInt(100));
    }

    int quadrado = 0;

    String lista = "Lista de números: $numeros\n";

    for (int numero in numeros) {
      quadrado = numero * numero;
      lista += "$quadrado ";
    }

    setState(() {
      _result = lista;
    });
  }

//////////////////////////////////// DESAFIO 14 ///////////////////////////////////////////////////

  void _desafio14() {
    List<int> numeros = [];
    Random random = Random();

    for (int i = 0; i < 10; i++) {
      numeros.add(random.nextInt(100));
    }

    int maior = numeros[0];
    int menor = numeros[0];

    String lista = "Lista de números: $numeros\n";

    for (int numero in numeros) {
      if (numero > maior) {
        maior = numero;
      } else if (numero < menor) {
        menor = numero;
      }
    }

    lista += "maior número: $maior\n";
    lista += "menor número: $menor";

    setState(() {
      _result = lista;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número atual de cliques:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _desafio12,
        tooltip: 'Increment',
        child: const Icon(Icons.check_circle_outline_outlined),
      ),
    );
  }
}

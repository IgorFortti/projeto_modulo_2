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

//////////////////////////////////// DESAFIO 8 ///////////////////////////////////////////////////

  void _desafio8() {
    Random random = Random();
    List<int> numeros = [];
    List<int> numerosOrdenados = [];

    for (int i = 0; i < 3; i++) {
      numeros.add(random.nextInt(100));
    }

    String lista = "Números em Ordem Decrescente: ";

    numeros.sort((a, b) => b.compareTo(a));
    for (int numero in numeros) {
      lista += "$numero ";
    }

    setState(() {
      _result = lista;
    });
  }

//////////////////////////////////// DESAFIO 11 ///////////////////////////////////////////////////

  void _desafio11() {
    int n = 5;

    String lista = "tabuada: \n";

    for (int i = 0; i < 10; i++) {
      lista += "$n x ${i + 1} = ${(i + 1) * n}\n";
    }

    setState(() {
      _result = lista;
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
    _result = lista.toString();
  });
  }
   
/////////////////////////////////////////  DESAFIO 1 /////////////////////////////////////////////

  void _desafio1() {
    int A = 11;
    int B = 15;

    int maior = A >= B ? A : B;

    setState(() {
      _result = maior.toString();
    });
  }

  ///////////////////////////////// DESAFIO 2 ////////////////////////////////////////////////////

  void _desafio2(int a, int b, int c) {
    int a = 10;
    int b = 15;
    int c = 20;


    int sum = a + b;

    setState(() {
      _result = sum.toString();
    });
  
    print('A + B = $sum');

    if (sum > c) {
      print('A + B é maior do que C.');
    } else if (sum < c) {
      print('A + B é menor do que C.');
    } else {
      print('A + B é igual a C.');
    }
  }

//////////////////////////////////// DESAFIO 3 ////////////////////////////////////////////////////

  int _desafio3() {
    int numero = 3;

    setState(() {
      if (numero == 0 || numero == 1) {
        _result = 1.toString();
      } else {
        int resultado = 1;
          for (int i = 2; i <= numero; i++) {
          resultado *= i;
        }
      _result = resultado.toString();
      }
    });
  }

/////////////////////////////////// DESAFIO 4 ////////////////////////////////////////////////////

  void _desafio4() {
    int numero = 1;
    setState(() {
      if (numero % 2 == 0) {
        if (numero >= 0) {
          _result = 'O número $numero é positivo e par.';
        } else {
          _result = 'O número $numero é negativo e par.';
        }
      } else {
        if (numero >= 0) {
          _result = 'O número $numero é positivo e ímpar.';
        } else {
          _result = 'O número $numero é negativo e ímpar.';
        }
      }
    });
  }

/////////////////////////////////// DESAFIO 5 ////////////////////////////////////////////////////
  void _desafio5() {
    int valorA = 5;
    int valorB = 5;
    int resultado;

    if (valorA == valorB) {
      resultado = valorA + valorB;
    } else {
      resultado = valorA * valorB;
    }

    setState(() {
      _result = resultado.toString();
    });
  }

/////////////////////////////////// DESAFIO 6 /////////////////////////////////////////////////

  void _desafio6() {
    int numero = 8;
    int antecessor = numero - 1;
    int sucessor = numero + 1;

    setState(() {
      _result = 'O antecessor de $numero é $antecessor.';
      _result = 'O sucessor de $numero é $sucessor.';
    });
  }

/////////////////////////////////// DESAFIO 7 ////////////////////////////////////////////////////

  void _desafio7() {
    double minimumWage = 1412.0;
    double userWage = 2000.0;
    double amountMinimumWages = userWage / minimumWage;

    setState(() {
      _result = 'O usuário ganha ${amountMinimumWages.toStringAsFixed(2)} salários mínimos.';
    });
  }
/////////////////////////////////// DESAFIO 9 ////////////////////////////////////////////////////

  void _desafio9() {
    String nome = "Paulo";
    int idade = 17;
    String mensagem;

    if (idade >= 18) {
      mensagem = "$nome, é maior de idade.";
    } else {
      mensagem = "$nome, é menor de idade.";
    }

    setState(() {
      _result = mensagem;
    });
  }

//////////////////////////////////// DESAFIO 13 ///////////////////////////////////////////////////

  void _desafio13() {
    List<int> numeros = [];
    Random random = Random();

    int par = 0;
    int impar = 0;

    for (int i = 0; i < 10; i++) {
      numeros.add(random.nextInt(100));
    }

    String lista = "Lista de números: $numeros\n";

    for (int numero in numeros) {
      if (numero % 2 == 0) {
        par++;
      } else {
        impar++;
      }
    }

    lista += "números pares: $par\n";
    lista += "números impares: $impar";

    setState(() {
      _result = lista;
    });
  }

//////////////////////////////////   DESAFIO 16 //////////////////////////////////////////////////

  void _desafio16() {
    String palavra = "ALA";
    if (Palindromo(palavra)) {
      print("$palavra é um políndromo");
    } else {
      print("$palavra não é um palíndromo");
    }
    setState(() {
      _result = palavra.toString();
    });
  }

  bool Palindromo(String texto) {
    texto = texto.replaceAll(RegExp(r'[^a-zA-Z]'), '');

    texto = texto.toLowerCase();

    String textoInvertido = texto.split('').reversed.join('');

    return texto == textoInvertido;
  }


   bool isPrime(int n) {
    if (n <= 1) {
      return false;
    }

    for (int i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }

    return true;
  }

  void _desafio15(int n) {
    var lista = [];
    for (int i = 0; i <= n; i++) {
      lista.add(i);
    }

    setState(() {
      _result = lista.toString();
    });
  }

  void _desafio17(int n) {
    if (isPrime(n)) {
      setState(() {
        _result = "$n é primo";
      });
    } else {
      setState(() {
        _result = "$n não é primo";
      });
    }
  }

  void _desafio18(String frase, String palavra) {
    List<String> palavrasLista = frase.split(' ');
    var count = 0;

    for (String i in palavrasLista) {
      if (i == palavra) {
        count++;
      }
    }

    setState(() {
      _result = count.toString();
    });
  }

  void _desafioExtraAgruparAnagramas(List<String> entrada) {
    Map<String, List<String>> mapaAnagramas = {};

    for (String palavra in entrada) {
      List<String> letrasOrdenadas = palavra.toLowerCase().split('')..sort();
      String formaCanonica = letrasOrdenadas.join('');

      mapaAnagramas.putIfAbsent(formaCanonica, () => []);
      mapaAnagramas[formaCanonica]?.add(palavra);
    }

    setState(() {
      _result = mapaAnagramas.values.toList().toString();
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
        onPressed: _desafio13,
        tooltip: 'Increment',
        child: const Icon(Icons.check_circle_outline_outlined),
      ),
    );
  }
}

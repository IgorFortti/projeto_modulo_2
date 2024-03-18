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
      title: 'FlutterSquad',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 177, 234, 140)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FlutterSquad'),
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
    int n = 1;

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

  void _desafio2() {
    void verificarSoma(int a, int b, int c) {
      int soma = a + b;
      String resultado;

      if (soma > c) {
        resultado = '$soma é maior do que $c';
      } else if (soma < c) {
        resultado = '$soma é menor do que $c';
      } else {
        resultado = '$soma é igual a $c';
      }

      setState(() {
        _result = resultado.toString();
      });
    }

    int A = 10;
    int B = 15;
    int C = 20;

    String resultadoSoma;
    verificarSoma(A, B, C);
  }

//////////////////////////////////// DESAFIO 3 ////////////////////////////////////////////////////

  void _desafio3() {
    int numero = 4;

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
    int numero = -2;
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
    int valorA = 4;
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
      _result =
          'O usuário ganha ${amountMinimumWages.toStringAsFixed(2)} salários mínimos.';
    });
  }
/////////////////////////////////// DESAFIO 9 ////////////////////////////////////////////////////

  void _desafio9() {
    String calcularMediaEStatus(List<double> notas) {
      double soma = 0;

      for (double nota in notas) {
        soma += nota;
      }

      double media = soma / notas.length;
      String status = media >= 7 ? 'aprovado' : 'reprovado';

      return 'Média do aluno: $media\nSituação: $status';
    }

    List<double> notasAluno = [
      8.5,
      7.0,
      6.5,
      9.0,
      7.5
    ]; // Exemplo de notas do aluno

    String resultado = calcularMediaEStatus(notasAluno);
    print(resultado);
  }

/////////////////////////////////// DESAFIO 10 ///////////////////////////////////////////////////
  void _desafio10() {
    String nome = 'João';
    int idade = 20;

    String resultado = 'Nome: $nome\n';
    resultado += (idade >= 18) ? 'Maior de idade' : 'Menor de idade';

    setState(() {
      _result = resultado;
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

  List<int> criarLista(int n) {
  List<int> lista = [];
  for (int i = 0; i <= n; i++) {
    lista.add(i);
  }
  return lista;
}

void _desafio15() {
  int limite = 3; 
  List<int> listaResultado = criarLista(limite);

setState(() {
        _result = "Sainda: $listaResultado";
      });  

}

  String verificarPrimo(int n) {
  if (n <= 1) {
    return "O número $n não é primo.";
  }

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return "O número $n não é primo.";
    }
  }

  return "O número $n é primo.";
}

void _desafio17() {
  int numero = 1; 
  String resultado = verificarPrimo(numero);
  setState(() {
      _result = resultado.toString();
    });
}


  int contarPalavraNaFrase(String palavra, String frase) {
  int contador = 0;
  String palavraLowerCase = palavra.toLowerCase();
  String fraseLowerCase = frase.toLowerCase();
  List<String> palavrasNaFrase = fraseLowerCase.split(' ');

  for (String palavraFrase in palavrasNaFrase) {
    if (palavraFrase == palavraLowerCase) {
      contador++;
    }
  }

  return contador;
}

void _desafio18() {
  String palavra = "gato";
  String frase = "O gato preto pulou o muro, mas o Gato Branco não.";

  int vezesPalavraAparece = contarPalavraNaFrase(palavra, frase);
  print("A palavra '$palavra' aparece $vezesPalavraAparece vezes na frase.");
  
    setState(() {
      _result = "A palavra '$palavra' aparece '$vezesPalavraAparece' vezes na frase.".toString();
    });

}


 



void _desafioExtra() {
  List<String> entrada = ['foR', 'scream', 'CaRs', 'poTatos', 'racs', 'creams', 'scar'];
  String resultado = agruparAnagramas(entrada);
  
  setState(() {
    _result = resultado;
  });
}

String agruparAnagramas(List<String> palavras) {
  Map<String, List<String>> mapaAnagramas = {};

  for (String palavra in palavras) {
  
    List<String> chaveOrdenada = palavra.toLowerCase().split('')..sort();
    String chave = chaveOrdenada.join();

    
    mapaAnagramas.putIfAbsent(chave, () => []);
    mapaAnagramas[chave]!.add(palavra);
  }

 
  List<List<String>> gruposAnagramas = mapaAnagramas.values.toList();

 
  String resultado = gruposAnagramas.toString();
  
  setState(() {
      _result = resultado.toString();
    });

  return resultado;
 

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
        onPressed: _desafioExtra,
        tooltip: 'Increment',
        child: const Icon(Icons.check_circle_outline_outlined),
      ),
    );
  }
}

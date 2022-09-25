import 'package:flutter/material.dart';
import 'package:flutter_quiz_pro/quiz.dart';

class Argumentos {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  Argumentos(this.acertos, this.erros, this.perguntaNumero);
}

class Resultado extends StatelessWidget {
  const Resultado({Key? key}) : super(key: key);

  static const routName = 'Resultado';

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 193, 193, 193),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            'Quiz de Musculação',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 156, 8),
            ),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Resultado:',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  'Você acertou\n${argumentos.acertos} de 10\nperguntas!',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado');

                      Navigator.pushNamed(context, 'Quiz');
                    },
                    child: Text('jogar Novamente',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

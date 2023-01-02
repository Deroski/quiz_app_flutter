import 'package:flutter/material.dart';
import 'package:flutter_quiz_pro/resultados.dart';

final List quiz = [
  {
    "pergunta": "Qual desses exercícios não é para costas?",
    "respostas": [
      "Remada",
      "Pulley Costas",
      "Sumô",
      "Serrote",
    ],
    "alternativa_correta": 3,
  },
  {
    "pergunta": "Qual desses exercícios não é para peito?",
    "respostas": [
      "Cruxifixo",
      "Supino Inclinado",
      "Voador",
      "Coice",
    ],
    "alternativa_correta": 3,
  },
];

class Quiz extends StatefulWidget {
  const Quiz({Key? key, required this.quiz}) : super(key: key);

  final List quiz;

  @override
  _QuizState createState() => _QuizState();
} //aula6

class _QuizState extends State<Quiz> {
  int perguntaNumero = 10;
  int acertos = 10;
  int erros = 10;

  @override
  Widget build(BuildContext context) {
    /*
    quiz.add({
      "pergunta": "Qual desses exercícios não é para peito?",
      "respostas": [
        "Cruxifixo",
        "Supino Inclinado",
        "Voador",
        "Coice",
      ],
      "alternativa_correta": 3,
    });

    for (int i = 3; i <= 20; i++) {
      quiz.add({
        "pergunta": "Qual desses exercícios não é para peito?",
        "respostas": [
          "Cruxifixo",
          "Supino Inclinado",
          "Voador",
          "Coice",
        ],
        "alternativa_correta": 1,
      });
    }
    ;

    print('Dados do Quiz');
    //print(quiz);
    */
    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }

        print('acertos totais: $acertos erros totais: $erros');

        if (perguntaNumero == 10) {
          print('Termminou o Quiz');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(acertos, erros, perguntaNumero));
        } else {
          perguntaNumero++;
        }
      });
    }

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text('Pergunta $perguntaNumero de 10',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Text('Pergunta:' + quiz[perguntaNumero + 0]['pergunta'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 1');
                    },
                    child: Text(quiz[perguntaNumero - 0]['respostas'][0],
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 2');
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][1],
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 3');
                    },
                    child: Text(quiz[perguntaNumero - 2]['respostas'][2],
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 4');
                    },
                    child: Text(quiz[perguntaNumero - 3]['respostas'][3],
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

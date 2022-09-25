import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter_quiz_pro/quiz.dart';
import 'homepage.dart';
import 'resultados.dart';

void main() {
  //runApp(Resultado(acertos: 3));
  //runApp(Quiz());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'Quiz': (context) => Quiz(
              quiz: [
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
              ],
            ),
        Resultado.routName: (context) => Resultado(),
      },
    );
  }
}

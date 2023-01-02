import 'package:flutter/material.dart';
import 'package:flutter_quiz_pro/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Image.asset('assets/images/eleelafitn.png'),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado');
                      Navigator.pushNamed(context, 'Quiz');
                    },
                    child: Text('jogar',
                        style: TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 255, 156, 8))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
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

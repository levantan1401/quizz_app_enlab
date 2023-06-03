import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app_enlab/quiz_screen.dart';
import 'package:quizz_app_enlab/const/color.dart';
import 'package:quizz_app_enlab/const/image.dart';
import 'package:quizz_app_enlab/const/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizzApp_Enlab(),
      theme: ThemeData(
        fontFamily: "quick",
      ),
      title: "Test Enlab",
    );
  }
}

class QuizzApp_Enlab extends StatelessWidget {
  const QuizzApp_Enlab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [blue, blue_dark],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(quiz),
            const SizedBox(
              height: 20,
            ),
            normalText(color: grey_light, size: 18, text: "Welcome to our"),
            headingText(color: Colors.white, size: 32, text: "Quiz App Enlab"),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizScreen()));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  width: size.width - 100,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: headingText(color: blue, size: 18, text: "Start Quiz!"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

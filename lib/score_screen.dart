import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app_enlab/const/color.dart';
import 'package:quizz_app_enlab/const/image.dart';
import 'package:quizz_app_enlab/const/text.dart';
import 'package:quizz_app_enlab/quiz_screen.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen(this.count_correct, this.countTime, {Key? key})
      : super(key: key);

  final int count_correct;
  final int countTime;

  String headNoti ='';
  String textWish ='';

  headNotifi(count_correct) {
    if(count_correct > 3) {
      return headNoti = "Congratulations!!!";
    }else if(count_correct <= 3 && count_correct >= 0) {
      return headNoti = "Completed!";
    }
  }
  textMsg(count_correct) {
    if(count_correct > 3) {
      return textWish = "You are amazing!!!";
    }else if(count_correct <= 3 && count_correct >= 0) {
      return textWish = "Better luck next time!";
    }
  }

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
            Image.asset(mainimg),
            const SizedBox(
              height: 20,
            ),
            headingText(
                // text: "${headNoti.toString()}",
                text:"${headNotifi(count_correct)}",
                color: Colors.white, size: 28),
            normalText(
                text:"${textMsg(count_correct)}", color: Colors.white, size: 18),
            normalText(
                text:
                    "${count_correct}/5 correct answers in ${countTime} seconds",
                color: Colors.white,
                size: 18),
            
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
                  child:
                      headingText(color: blue, size: 18, text: "Play Again"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

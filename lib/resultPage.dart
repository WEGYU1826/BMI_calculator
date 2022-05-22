import 'package:flutter/material.dart';
import 'const.dart';
import 'inputPage.dart';
import 'card.dart';
import 'bottom_Button.dart';
import 'claculatorBrain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: inactiveCardColor,
        title: const Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusableCard(
                color: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const Text(
                    //   "Normal BMI range: 18.5 - 25kg/m2",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 22.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    Text(
                      interpretation,
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              onTop: () {
                Navigator.pop(context);
              },
              buttomTitle: "RE-CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}

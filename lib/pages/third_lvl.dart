import 'package:flutter/material.dart';
import 'package:shulte/assets/adaptivity.dart';
import 'package:shulte/assets/timer.dart';
import 'package:shulte/widget/reactButton.dart';
import 'package:shulte/widget/text_num_choise.dart';

class ThirdLvlField extends StatefulWidget {
  @override
  State<ThirdLvlField> createState() => _ThirdFieldState();
}

class _ThirdFieldState extends State<ThirdLvlField> {
  List<int> numbers = [];
  List<int> randNumbers = [];
  int correct = 0;
  int countNum = 0;
  int incorrect = 0;
  bool start = true;

  List<int> creteListNumOfBut(int count) {
    List<int> numOfBut = [];
    for (int i = 1; i <= count; i++) {
      numOfBut.add(i);
    }
    numOfBut.shuffle();
    return numOfBut;
  }

  List<int> creatListShowNum(int count) {
    List<int> randNum = [];
    for (int i = 1; i <= count; i++) {
      randNum.add(i);
    }
    randNum.shuffle();
    return randNum;
  }

  int showNumRandList() {
    if (randNumbers.isNotEmpty) {
      return randNumbers.first;
    } else {
      return 0;
    }
  }

  @override
  void initState() {
    numbers = creteListNumOfBut(50);
    randNumbers = creatListShowNum(50);
    start = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerForGame(
              started: start,
            ),
            SizedBox(height: heightAdaptive(20, context)),
            (randNumbers.isEmpty == false)
                ? TextClickNumWidget(choiseNum: showNumRandList())
                : Text(" "),
            SizedBox(height: heightAdaptive(20, context)),
            Container(
              height: heightAdaptive(550, context),
              width: widthAdaptive(276, context),
              child: Wrap(
                children: [
                  for (var i in numbers)
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      child: InkWell(
                        onTap: () async {
                          setState(() {
                            if (randNumbers.first == i) {
                              countNum = i;
                              correct = i;
                              randNumbers.remove(randNumbers.first);
                              //countNum = i;
                              //correct = i;
                            } else {
                              countNum = 0;
                              incorrect = i;
                            }
                          });
                          await Future.delayed(
                              const Duration(milliseconds: 350));

                          setState(() {
                            correct = 0;
                            incorrect = 0;
                          });

                          if (randNumbers.isEmpty == true) {
                            start = false;
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Center(child: Text('win')),
                                    ));
                          }
                        },
                        child: TableElement(
                          size: 50,
                          num: i,
                          color: (correct == i)
                              ? Colors.green
                              : (incorrect == i)
                                  ? Colors.red
                                  : Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

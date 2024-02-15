import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:timer_stop_watch/timer_stop_watch.dart';

timerToSTartGame(int seconds, double fontSize, Function()? onFinished) {
  return AnimatedTextKit(
      totalRepeatCount: 1,
      onFinished: onFinished,
      pause: const Duration(milliseconds: 0),
      animatedTexts: [
        for (var i = seconds; i > 0; i--)
          RotateAnimatedText(
              (seconds > 59)
                  ? '${i ~/ 60}:${(i % 60 < 10) ? '0' : ''}${i % 60}'
                  : '$i',
              textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w800,
                  color: Colors.brown),
              duration: const Duration(milliseconds: 1000)),
      ]);
}

// timerForGame(double fontSize, bool listIsEmpty) {
//   return AnimatedTextKit(
//       totalRepeatCount: 1,
//       pause: const Duration(milliseconds: 0),
//       animatedTexts: [
//         for (var seconds = 0; seconds >= 0; seconds++)
//           RotateAnimatedText(
//             (seconds > 59)
//                 ? '${seconds ~/ 60}:${(seconds % 60 < 10) ? '0' : ''}${seconds % 60}'
//                 : '$seconds',
//             textStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.w800,
//                 color: Colors.brown),
//             duration: const Duration(milliseconds: 1000),
//           ),
//       ]);
// }

class TimerForGame extends StatefulWidget {
  late bool started;
  TimerForGame({super.key, required this.started});

  @override
  State<TimerForGame> createState() => _TimerForGameState();
}

class _TimerForGameState extends State<TimerForGame> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  List laps = [];

  void stop() {
    timer!.cancel();
  }

  void addLaps() {
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    widget.started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
      });
    });
  }

  @override
  void initState() {
    start();
    super.initState();
  }

  @override
  void dispose() {
    stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (widget.started == false) {
    //   stop();
    // }
    return Text(
      '$digitHours:$digitMinutes:$digitSeconds',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
    );
  }
}

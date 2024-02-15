import 'package:flutter/material.dart';
import 'package:shulte/pages/second_lvl.dart';
import 'package:shulte/pages/third_lvl.dart';
import 'package:shulte/pages/first_lvl.dart';

class FirstLvl extends StatelessWidget {
  const FirstLvl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 70, 221),
        centerTitle: true,
        title: const Text('Уровень 1', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
          child: Center(
        child: (FirstLvlField()),
      )),
    );
  }
}

class SecondLvl extends StatelessWidget {
  const SecondLvl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 70, 221),
        centerTitle: true,
        title: Text('Уровень 2', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
          child: Center(
        child: (SecondLvlField()),
      )),
    );
  }
}

class ThirdLvl extends StatelessWidget {
  const ThirdLvl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 70, 221),
        centerTitle: true,
        title: Text('Уровень 3', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
          child: Center(
        child: (ThirdLvlField()),
      )),
    );
  }
}

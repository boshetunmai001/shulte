import 'package:flutter/material.dart';
import 'pages/lvlgame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Таблицы Шульте',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Таблицы Шульте'),
        '/firstLvl': (context) => const FirstLvl(),
        //'firstLvl':(context) =>
        //'firstLvl':(context) =>
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 70, 221),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FirstLvl();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 136, 70, 221),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 1, 12, 16))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Уровень 1',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondLvl();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 136, 70, 221),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 1, 12, 16))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Уровень 2',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ThirdLvl();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 136, 70, 221),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 1, 12, 16))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Уровень 3',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

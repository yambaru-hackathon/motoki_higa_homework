import 'dart:math';

import 'package:flutter/material.dart';
import 'package:main/count_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final random = Random();
  Color? color;

  @override
  void initState() {
    super.initState();
    color = randomColor;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CountBody(name:'first', number: 1, color: color,),
                    Builder(
                      builder: (context) {
                        final model = Provider.of<CountModel>(context);
                        return FloatingActionButton(
                          onPressed: (){ 
                            model.incrementCounter();
                            changeColor();
                          },
                          tooltip: 'Increment',
                          child: const Icon(Icons.add),
                        );
                      }
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    CountBody(name:'second', number: 2, color: color,),
                    Builder(
                      builder: (context) {
                        final model = Provider.of<CountModel>(context);
                        return FloatingActionButton(
                          onPressed: (){ 
                            model.incrementCounter2();
                            changeColor();
                          },
                          tooltip: 'Increment',
                          child: const Icon(Icons.add),
                        );
                      }
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Color get randomColor => Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256));


  void changeColor() => setState(() => color = randomColor);
}

class CountBody extends StatelessWidget {
  CountBody({super.key, required this.name, required this.number, required this.color});

  String name;
  int number;
  Color? color;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CountModel>(context);
    int counter = 0;

    if (number == 1){
      counter = model.counter;
    }
    else if (number == 2){
      counter = model.counter2;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: color),
          ),
          Text(
            '${counter}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
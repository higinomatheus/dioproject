import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;

  void _generateRandomNumber(){
    Random num = Random();
    setState(() {
      randomNumber = num.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("O método build é chamado cada vez que o estado deste objeto é alterado");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child: Text(randomNumber.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomNumber,
        child: Icon(Icons.add_box),
      ),
    );
  }
}
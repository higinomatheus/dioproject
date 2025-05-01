import 'dart:math';

import 'package:dioproject/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;

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
        onPressed: (){
          setState(() {
            randomNumber = Utils.generateIntRandomNumber(1000);
          });
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}
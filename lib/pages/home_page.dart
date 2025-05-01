import 'package:dioproject/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text("Meu App", 
          // style: GoogleFonts.abyssinicaSil(),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child: Text(
          randomNumber.toString(),
          style: TextStyle(fontSize: 20), 
          // style: GoogleFonts.acme(fontSize: 20),
        )),
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
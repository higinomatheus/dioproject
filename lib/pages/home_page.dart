import 'package:dioproject/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var quantityClicks = 0;
  var randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "O método build é chamado cada vez que o estado deste objeto é alterado");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App",
          // style: GoogleFonts.abyssinicaSil(),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Ações do usuário", style: TextStyle(fontSize: 20)),
            Text("Foi clicado $quantityClicks vezes",
                style: TextStyle(fontSize: 20)),
            Text(
              "O número gerado foi: $randomNumber",
              style: TextStyle(fontSize: 20),
              // style: GoogleFonts.acme(fontSize: 20),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(color: Colors.red, child: Text("10"))),
                Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue, child: Text("20"))),
                Expanded(
                    flex: 1,
                    child: Container(color: Colors.green, child: Text("30")))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantityClicks++;
            randomNumber = Utils.generateIntRandomNumber(1000);
          });
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}

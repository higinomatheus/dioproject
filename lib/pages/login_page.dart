import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 179, 149, 60),
        body: SizedBox(
          width: double.infinity,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              color: Colors.green,
              height: 30,
              alignment: Alignment.center,
              child: Text("Informe seu email")
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              color: Colors.green,
              height: 30,
              alignment: Alignment.center,
              child: Text("Informe a senha")
            )
          ]),
        ),
      ),
    );
  }
}

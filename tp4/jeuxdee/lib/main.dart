import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var chiffredeedegauche = 1;
  var chiffredeededroite = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 67, 54, 244),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 67, 54, 244),
          title: Text("jeux de dées"),
        ),
        body:
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            chiffredeedegauche = Random().nextInt(6) + 1;
                            print(chiffredeedegauche);
                          });
                        },
                        child: Image.asset('images/dice$chiffredeedegauche.png'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            chiffredeededroite = Random().nextInt(6) + 1;
                            print(chiffredeededroite);
                          });
                        },
                        child: Image.asset('images/dice$chiffredeededroite.png'),
                      ),
                    ),
                  ]),
            )

      ),
    );
  }
}

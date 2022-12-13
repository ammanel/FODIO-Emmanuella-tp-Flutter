import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                "I am RICH",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.orange,
            ),
            body: Center(
              child: Column(

                children: [
                  Image(
                    image: AssetImage("images/diamond.jpg"),
                    width: 300.0,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

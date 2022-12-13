import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFF007acc) ,
        appBar: AppBar(
          backgroundColor: Color(0XFF007acc),
          title: Text('My card'),
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/personne.jpg')),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'FODIO Emmanuella',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily:'pacifico'
              ),
            ),

            SizedBox(
              width: 70.0,
              child: Divider(
                color:Colors.white,
              ),
            ),

            Text('Full Stack Developper',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone,color: Color(0XFF007acc), size: 40.0,),
              Text('+228 99 54 15 88',style: TextStyle(
                fontSize: 20.0
              ),)
            ],
          ),
        ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),


              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.mail,color: Color(0XFF007acc), size: 40.0,),
                  Text('Princesseemmanuella24@gmail.com',style:  TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

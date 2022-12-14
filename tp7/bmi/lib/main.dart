
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: const MyHomePage(title: 'BMI'),
      debugShowCheckedModeBanner: false,


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

  bool genre = true;
  double taillebase = 0.0;
  double? poids;
  double? age;
  double Sliderdouble = 0.0;
  int poidsbase = 50;
  int agebase = 18;
  double? caloriebase;
  double? calorieavecActivite;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(

            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Card(
                color:Color(
                    0xFF250749),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),),
                child: Container(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          genre = true;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.man,size: 100,color: Colors.white,),
                          new Text("Homme",style: TextStyle(fontSize: 40,color: Colors.white),)
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width/2.2,
                    height: 200,


                ),
              ),
              Card(
                color: Color(
                    0xFF250749),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),),
                child: Container(
                  child: InkWell(
                    onTap: (){
                      genre = false;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.woman,size: 100,color: Colors.white,),
                        new Text("Femme",style: TextStyle(fontSize: 50,color: Colors.white),)
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width/2.2,
                  height: 200,

                ),
              ),
            ],
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Card(
                color: Color(
                    0xFF250749),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),),
                child: Container(
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("${Sliderdouble.toInt()}",style: TextStyle(fontSize: 40,color: Colors.white),),
                          new Text("cm",style: TextStyle(fontSize: 15,color: Colors.white),),

                        ],
                      ),

                      new Slider(
                          activeColor: Colors.pink,
                          inactiveColor: Colors.black,

                          min: 0.0,
                          max: 220.0,
                          value: Sliderdouble,
                          divisions: 100,
                          onChanged: (double d){
                            setState(() {
                              taillebase = d;
                              Sliderdouble = d;
                            });
                          })
                    ],
                  ),
                  width: MediaQuery.of(context).size.width-20,
                  height: 200,


                ),
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Card(
                color: Color(
                    0xFF250749),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Text("Poids",style: TextStyle(fontSize: 40,color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("$poidsbase",style: TextStyle(fontSize: 50,color: Colors.white),),
                          new Text("KG",style: TextStyle(fontSize: 15,color: Colors.white),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            child:InkWell(
                              onTap:(){
                                setState(() {
                                  poidsbase++;
                                });
                              },
                              child: Icon(Icons.add_circle_outline),
                            ),
                          ),
                          Card(
                            child:InkWell(
                              onTap:(){
                                setState(() {
                                  poidsbase--;
                                });
                              },
                              child: Icon(Icons.remove_circle_outline),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width/2.2,
                  height: 200,

                ),
              ),
              Card(

                color: Color(
                    0xFF250749),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Text("Age",style: TextStyle(fontSize: 40,color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("$agebase",style: TextStyle(fontSize: 50,color: Colors.white),),
                          new Text("ans",style: TextStyle(fontSize: 15,color: Colors.white),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            child:InkWell(
                              onTap:(){
                                setState(() {
                                  agebase++;
                                });
                              },
                              child: Icon(Icons.add_circle_outline),
                            ),
                          ),
                          Card(
                            child:InkWell(
                              onTap:(){
                                setState(() {
                                  agebase--;
                                });
                              },
                              child: Icon(Icons.remove_circle_outline),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width/2.2,
                  height: 200,

                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Card(
            color: Color(
                0xFF250749),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
            child: InkWell(
              onTap: (){
                alert();
              },
              child: Container(


                  width: MediaQuery.of(context).size.width-20,
              height: MediaQuery.of(context).size.height/12,
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("CALULER BMI",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                ],
              ),

            ),
          ),
        )

        ],
      ),
      ],
    ),
    ),
    ),

    );
  }

  Future<Null> alert ()async{
    return showDialog(context: context,
        builder: (BuildContext buidlcontext){
          return SimpleDialog(
            title: Text("Calcule du BMI"),
            titlePadding: EdgeInsets.only(left: 70,top: 20),
            children: [
              Column(
                children: [
                  Text("votre besoins en calories est de :${calculBMI(genre, poidsbase, taillebase, agebase)}"),

                ],
              )
            ],
            contentPadding: EdgeInsets.all(50),

          );
        });
  }

  double calculBMI(bool genre,int poids,double taille,int age){
    double? calorie = 0;
    if(genre == true){
      calorie = 66.4730 + (13.7516 * poids) + (5.0033 * taille) - (6.7550 * age);
    }if(genre == false){
      calorie =  655.0955 + (9.5634 * poids) + (1.8496 * taille) - (4.6756 * age);
    }
    return calorie;
  }
}
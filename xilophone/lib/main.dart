import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(

            child: TextButton(

              onPressed: (){
                AudioPlayer audio = new AudioPlayer();
                Future eco() async{
                  await audio.play(AssetSource("note1.wav"));
                }
                eco();

              },child: Container(
                color: Colors.blue
            ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                AudioPlayer audio = new AudioPlayer();
                Future eco() async{
                  await audio.play(AssetSource("note2.wav"));
                }
                eco();
              },child: Container(
                color: Colors.red
            ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                AudioPlayer audio = new AudioPlayer();
                Future eco() async{
                  await audio.play(AssetSource("note3.wav"));
                }
                eco();
              },child: Container(
                color: Colors.yellow
            ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                AudioPlayer audio = new AudioPlayer();
                Future eco() async{
                  await audio.play(AssetSource("note4.wav"));
                }
                eco();
              },child: Container(
                color: Colors.green
            ),
            ),
          ),
         Expanded(

            child: TextButton(
                onPressed: (){
                  AudioPlayer audio = new AudioPlayer();
                  Future eco() async{
                    await audio.play(AssetSource("note5.wav"));
                  }
                  eco();
                },child: Container(
                color: Colors.orange
            ),
              ),
          ),
        ],
      )),
    );
  }
}

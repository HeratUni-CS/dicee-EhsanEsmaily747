import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
    backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title:const Center(
          child:Text(
            'Dice',
            style: TextStyle(
              fontSize: 30.0
            ),
        ),
        ),
      ),
      body:const DicePage(),
    )
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdice=1;
  int rightdice=1;

  void ChangeDice(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(onPressed:(){
              ChangeDice();
            } ,
             child:Image.asset('images/dice$leftdice.png')
              ),
            ),
          Expanded(
            child: TextButton(onPressed:(){
              ChangeDice();
            } ,
             child:Image.asset('images/dice$rightdice.png')
              ),
            ),

        ],
      ),
    );
  }
}
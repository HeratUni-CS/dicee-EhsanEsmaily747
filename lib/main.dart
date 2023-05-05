import 'package:flutter/material.dart';


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
      body:Container(),
    )
  ));
}
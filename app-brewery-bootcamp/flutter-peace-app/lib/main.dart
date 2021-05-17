import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text('Peace'),
          ),
        ),
        body: 
          Center(
            child:
              Image(
                image: AssetImage(
                  'assets/images/peace.png',
                ),
                fit: BoxFit.fitWidth,
              ),
          )
            
      ),
    )
  );
}

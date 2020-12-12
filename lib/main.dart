import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left button was pressed');
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right button was pressed');
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png')
            ),
          ),
        ],
      ),
    );
  }
}

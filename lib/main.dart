import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.purple[700],
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child:TextButton(
                  onPressed: () {
                    setState(() {
                    leftDiceNumber = Random().nextInt(6) +1;
                  });
                    },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: ()
                  {setState(() {
                    rightDiceNumber = Random().nextInt(6) +1;
                  });},
                  child: Image.asset('images/dice$rightDiceNumber.png'),

                ),
              ),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.purple[300])
                  ,onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1 ;
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                },
                  child: Text('ALEATORIO',
                    style: TextStyle(
                      color: Colors.white,
                    ),),)

                ),
              ]
          ),

        ],

      ),
    );


  }
}





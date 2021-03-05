import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber=1;
  int rightDiceNumber=1;

  void RandomDicey(int leftDiceNumber,int rightDiceNumber){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });


  }

  void RandomDice(){
    setState(() {

    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Left button got pressed');

                  if(leftDiceNumber<=6) {
//                    leftDiceNumber=Random().nextInt(6)+1;
//                    rightDiceNumber=Random().nextInt(6)+1;
 //                   RandomDicey(leftDiceNumber,rightDiceNumber);
                    RandomDice();

                  }

              },
              onLongPress: () {
                print('that was a long press on the left button');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {

//                  leftDiceNumber=Random().nextInt(6)+1;
//                  rightDiceNumber=Random().nextInt(6)+1;
                  //RandomDice(leftDiceNumber,rightDiceNumber);
                  RandomDice();

                print('right button got pressed');
              },
              onLongPress: () {
                print('this was a long press on the right button');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}



//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            flex: 1,
//            child: FlatButton(
//              onPressed: () {
//                print('Left button got pressed');
//              },
//              onLongPress: () {
//                print('that was a long press on the left button');
//              },
//              child: Image.asset('images/dice1.png'),
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: FlatButton(
//              onPressed: () {
//                print('right button got pressed');
//              },
//              onLongPress: () {
//                print('this was a long press on the right button');
//              },
//              child: Image.asset('images/dice2.png'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}

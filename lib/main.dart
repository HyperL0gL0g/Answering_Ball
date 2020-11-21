import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(MaterialApp(
    home  : Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'magic-8-ball',
        ),
      ),
      body :Dice(),
    ),
    )
 );
}

class Dice  extends StatefulWidget{
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var img=1;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 60,10, 60),
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    var randomizer = new Random(); // can get a seed as a parameter
                    var num = randomizer.nextInt(5);
                    img=num+1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/ball$img.png'),
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}






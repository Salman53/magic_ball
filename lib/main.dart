import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  ),
);



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Magic(),
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          setState(() {
        ballNum = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}





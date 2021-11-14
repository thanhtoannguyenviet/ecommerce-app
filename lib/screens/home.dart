import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello world',
              style: TextStyle(
                fontSize: 40,
                color: Color(0xff746bc9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
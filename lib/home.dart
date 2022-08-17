import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top:20),
          child: Text('Yew')
        ),
        Container(
          margin: EdgeInsets.only(top:20),
          child: ElevatedButton(
            onPressed: (){}, 
            child: Text('Navigate to Account')
        ))
      ]),
    );
  }
}
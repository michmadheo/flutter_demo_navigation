import 'package:flutter/material.dart';
import 'account.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String hola = 'Hello';
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
            onPressed: (){
              // Navigator.pushReplacement(context, PageRouteBuilder(
              //   pageBuilder: (context, animation, secondAnimation){
              //     return Account();
              //   },
              //   settings: RouteSettings(
              //     arguments: hola
              //   )
              // ));
              Navigator.pushNamed(context, '/Account', arguments: {'hola' : hola});
            }, 
            child: Text('Navigate to Account')
        ))
      ]),
    );
  }
}
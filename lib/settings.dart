import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Settings'),
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
              Navigator.pop(context);
            }, 
            child: Text('Navigate to Settings')
        ))
      ]),
    );
  }
}
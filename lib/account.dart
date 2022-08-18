import 'package:flutter/material.dart';
import 'package:flutter_navigation_demo/settings.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  String demo = 'Demo';

  void greet(String msg) async{
    await Future.delayed(Duration(seconds: 3),(){
      print('Wow');
    });
    print(msg);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    // String arg = ModalRoute.of(context).settings.arguments as String;
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    greet(arguments['hola']);
    setState(() {
      demo = arguments['hola'];
    });
  }

  @override
  Widget build(BuildContext context) {
    // final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    // setState(() {
    //   demo = arguments['hola'];
    // });

    return Scaffold(
      appBar: AppBar(
        title: Text(demo),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top:20),
          child: Text(demo)
        ),
        Container(
          margin: EdgeInsets.only(top:20),
          child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/Settings');
            }, 
            child: Text('Navigate to Settings')
        ))
      ]),
    );
  }
}
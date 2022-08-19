import 'package:flutter/material.dart';
import 'settings.dart';
import 'account.dart';
import 'home.dart';
import 'containerPage.dart';

void main()=>runApp(
  MaterialApp(
    routes: {
      '/': (context){
        return ContainerPage();
      },
      '/Home': (context){
        return Home();
      },
      '/Account': (context){
        return Account();
      },
      '/Settings': (context){
        return Settings();
      }
    },
    initialRoute: '/',
  )
);
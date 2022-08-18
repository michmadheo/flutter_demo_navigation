import 'package:flutter/material.dart';
import 'settings.dart';
import 'account.dart';
import 'home.dart';

void main()=>runApp(
  MaterialApp(
    routes: {
      '/': (context){
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
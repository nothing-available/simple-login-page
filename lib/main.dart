import 'package:flutter/material.dart';
import 'package:flutter_application_3/login.dart';
import 'package:flutter_application_3/register.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login', //first screen
      routes: {
        'login':(context) => const MyLogin(),
        'register':(context) => const MyRegister()
      },
    );
  }
}
   
 


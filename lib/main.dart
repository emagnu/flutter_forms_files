//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'pages/home_page.dart';

//  //   ///

void main() {
  runApp(const FormApp());
}

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

//  //   ///
//  Import LIBRARIES
//  Import FILES
//  PARTS
//  PROVIDERS
//  //   ///


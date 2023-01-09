import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const JobifyApp());
}

class JobifyApp extends StatelessWidget {
  const JobifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

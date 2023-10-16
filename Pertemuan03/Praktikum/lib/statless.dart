import 'package:flutter/material.dart';

class MyStatelass extends StatelessWidget {
  const MyStatelass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: const SafeArea(child: Text('Selamat datang di Flutter.')),
      ),
    );
  }
}

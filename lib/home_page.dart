import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sua Parte Diária')),
        backgroundColor: Color.fromARGB(255, 10, 74, 126),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TextFormField(decoration: InputDecoration(labelText: 'Field 1'))
        ],
      )),
    );
  }
}

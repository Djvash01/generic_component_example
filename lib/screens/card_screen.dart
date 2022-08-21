import 'package:flutter/material.dart';
import 'package:generic_component_example/widgets/widgets.dart';
class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartas o tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
        children: const [
          CustomCardType1()
        ],
      )
    );
  }
}
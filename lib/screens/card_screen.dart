import 'package:flutter/material.dart';
import 'package:generic_component_example/theme/app_theme.dart';

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

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text('soy un title'),
            leading: Icon(Icons.bubble_chart, color: AppTheme.primaryColor),
            subtitle: const Text('Lorem ipsum para que sea un text muy largo para que sea un texto muy largo'),
          )
        ],
      ),
    );
  }
}
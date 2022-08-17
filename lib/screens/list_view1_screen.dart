import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final options = const [
    'Mega man',
    'Metal gear',
    'Smash bross',
    'Mario bross'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view tipo 1'),
        ),
        body: ListView(
          children: options.map(
            (element) => ListTile(
              title: Text(element),
              leading: const Icon(Icons.car_rental),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ).toList()
        )
      );
  }
}

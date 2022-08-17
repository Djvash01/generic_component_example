import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final options = const [
    'Mega man',
    'Metal gear',
    'Smash bross',
    'Mario bross',
    'final fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.red),
            onTap: () => print(options[index]),
          ),
          separatorBuilder: (_, __) => const Divider(),
        )
      );
  }
}

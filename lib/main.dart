import 'package:flutter/material.dart';

import 'package:generic_component_example/screens/list_view2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Listview2Screen()
    );
  }
}
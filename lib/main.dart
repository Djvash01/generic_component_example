import 'package:flutter/material.dart';

import 'package:generic_component_example/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home':(BuildContext context) => const HomeScreen(),
        'listView1':(BuildContext context) => const Listview1Screen(),
        'listView2':(BuildContext context) => const Listview2Screen(),
        'alert':(BuildContext context) => const AlertScreen(),
        'card':(BuildContext context) => const CardScreen(),
      },
    );
  }
}
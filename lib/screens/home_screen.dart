import 'package:flutter/material.dart';
//import 'package:generic_component_example/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              title: const Text('ruta'),
              leading: const Icon(Icons.access_time_outlined),
              onTap: () {
                // final route = MaterialPageRoute(
                //     builder: (context) => const Listview1Screen());
                // Navigator.push(context, route);
                Navigator.pushNamed(context, 'card');
              }),
          separatorBuilder: (_, __) => Divider(),
          itemCount: 10),
    );
  }
}

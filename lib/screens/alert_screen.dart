import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: const Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Contenido de la alerta'),
                  FlutterLogo(
                    size: 100,
                  )
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar')),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('ok'))
              ],
            ));
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Titutlo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Contenido de la alerta'),
            FlutterLogo(
              size: 100,
            )
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child:
                  const Text('Cancelar', style: TextStyle(color: Colors.red))),
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('ok'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}

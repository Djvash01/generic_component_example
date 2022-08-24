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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                name: 'high wind',
                imgUrl:
                    'https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg'),
            SizedBox(height: 10),
            CustomCardType2(
                imgUrl:
                    'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
            SizedBox(height: 10),
            CustomCardType2(
              imgUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20sun%20beams%20belgium%20ardennes.jpg',
            )
          ],
        ));
  }
}

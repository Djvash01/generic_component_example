import 'package:flutter/material.dart';
import 'package:generic_component_example/theme/app_theme.dart';

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
            leading: Icon(Icons.bubble_chart, color: AppTheme.primary),
            subtitle: const Text('Est adipisicing quis qui Lorem ex nisi ex. Laboris dolor occaecat enim veniam tempor sunt proident officia sit adipisicing ex elit sint reprehenderit. Eu est proident id velit nostrud. Laborum dolore Lorem cillum nulla reprehenderit consectetur in ipsum id culpa aliquip. Aliqua culpa minim aliquip cupidatat consectetur anim incididunt veniam occaecat eu fugiat aliquip magna cillum. Commodo reprehenderit magna laboris elit sint laboris sint ullamco pariatur. Et anim consequat pariatur ut reprehenderit aliqua.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel')
                ),
                TextButton(onPressed: (){}, child: const Text('ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
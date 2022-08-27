import 'package:flutter/material.dart';
import 'package:generic_component_example/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              value: _sliderValue,
              min: 50,
              max: 400,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),
          CheckboxListTile(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              title: const Text('Habilitar btn'),
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })),
          Switch(
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value;
                  })),
          SwitchListTile.adaptive(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              title: const Text('Habilitar btn'),
              onChanged: (value) => setState(() {
                    _sliderEnabled = value;
                  })),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://pics.filmaffinity.com/Deadpool-834516798-large.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const AboutListTile()
        ],
      ),
    );
  }
}

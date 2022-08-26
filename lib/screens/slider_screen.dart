import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
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
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              }),
          Image(
            image: NetworkImage(
                'https://pics.filmaffinity.com/Deadpool-834516798-large.jpg'),
            fit: BoxFit.contain,
            width: _sliderValue,
          )
        ],
      ),
    );
  }
}

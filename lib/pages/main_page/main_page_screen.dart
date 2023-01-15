import 'dart:math';

import 'package:flutter/material.dart';

///some description
class MainPageScreen extends StatefulWidget {
  ///some description
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  List<int> colors = [255, 255, 255];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          _randomizeColor();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: Color.fromRGBO(colors.first, colors[1], colors.last, 1),
          ),
          child: const Center(
            child: Text(
              'Hi there',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }

  void _randomizeColor() {
    const maxValue = 255;
    int red;
    int green;
    int blue;
    final random = Random();
    red = random.nextInt(maxValue);
    green = random.nextInt(maxValue);
    blue = random.nextInt(maxValue);
    setState(() {
      colors = [red, green, blue];
    });
  }
}

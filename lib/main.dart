import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task/pages/main_page/main_page_screen.dart';

void main() {
  runApp(const Main());
}

///some description
class Main extends StatelessWidget {
  ///some description
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPageScreen(),
    );
  }
}

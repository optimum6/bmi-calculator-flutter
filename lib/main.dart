import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purple[900],
          primary: Color(0xff0A0E21),
        ),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(color: Colors.white),
        ),
      ),
      home: SafeArea(
        child: InputPage(),
      ),
    );
  }
}

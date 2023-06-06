import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

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
        // Take the default slider theme and apply some customisation
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: Color(0xFF8D8E98),
          activeTrackColor: Colors.white,
          thumbColor: kPinkColour,
          overlayColor: Color(0x29EB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
      ),
      home: SafeArea(
        child: InputPage(),
      ),
    );
  }
}

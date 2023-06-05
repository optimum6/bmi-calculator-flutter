import 'package:flutter/material.dart';

const iconSize = 80.0;
const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class GenderChild extends StatelessWidget {
  final IconData icon;
  final String text;

  GenderChild({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}

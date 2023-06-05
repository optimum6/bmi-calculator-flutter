import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_child.dart';

const double bottomContainerHeight = 75.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      cardChild: GenderChild(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  )),
                ),
                Expanded(
                  child: ReuseableCard(
                    cardChild: GenderChild(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: ReuseableCard(),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}

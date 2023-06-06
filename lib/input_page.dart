import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_child.dart';
import 'gender_enum.dart';

const double bottomContainerHeight = 75.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0XFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.NONE;

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
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      },
                      colour: selectedGender == Gender.MALE
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: GenderChild(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    colour: selectedGender == Gender.FEMALE
                        ? activeCardColour
                        : inactiveCardColour,
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
            child: ReuseableCard(
              colour: inactiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: inactiveCardColour,
                  ),
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_child.dart';
import 'gender_enum.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.NONE;
  int height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      onPress: () {
                        setState(() => selectedGender = Gender.MALE);
                      },
                      colour: selectedGender == Gender.MALE
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: GenderChild(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() => selectedGender = Gender.FEMALE);
                    },
                    colour: selectedGender == Gender.FEMALE
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
              colour: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBoldLabelStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kPinkColour,
            height: kBottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}

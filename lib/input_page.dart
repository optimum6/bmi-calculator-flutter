import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_child.dart';

const double bottomContainerHeight = 75.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0XFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateCardColours(int gender) {
    // 0 = male, 1 = female
    if (gender == 0) {
      //  Male clicked
      if (maleCardColour == activeCardColour) {
        maleCardColour = inactiveCardColour;
      } else {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      }
    } else {
      //Female clicked
      if (femaleCardColour == activeCardColour) {
        femaleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //Male card pressed
                        updateCardColours(0);
                      });
                    },
                    child: ReuseableCard(
                        colour: maleCardColour,
                        cardChild: GenderChild(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //Female card pressed
                        updateCardColours(1);
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardColour,
                      cardChild: GenderChild(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
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

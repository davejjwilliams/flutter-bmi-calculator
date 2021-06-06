import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'sex_card_content.dart';

const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const double bottomContainerHeight = 80.0;
const Color bottomContainerColour = Color(0xFFEB1555);

enum Sex { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex selectedSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSex = Sex.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedSex == Sex.male
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: SexCardContent(
                          cardIcon: FontAwesomeIcons.mars,
                          cardText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSex = Sex.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedSex == Sex.female
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: SexCardContent(
                          cardIcon: FontAwesomeIcons.venus,
                          cardText: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

const cardTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class SexCardContent extends StatelessWidget {
  SexCardContent({@required this.cardIcon, @required this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: cardTextStyle,
        )
      ],
    );
  }
}

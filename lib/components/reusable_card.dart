import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.tapCard, @required this.colour, this.childCard});

  final Function tapCard;
  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCard,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childCard,
      ),
    );
  }
}

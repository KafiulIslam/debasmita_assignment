import 'package:debasmita_assignment/utils/typography.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class ExperienceCard extends StatelessWidget {
  final Color color;
  final String number;
  final String title;
  final Color titleColor;

  const ExperienceCard(
      {Key? key,
      required this.color,
      required this.number,
      required this.title,
        this.titleColor = white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: header1.copyWith(color: titleColor),
              ),
              Text(
                title,
                style: sixteenWhiteStyle.copyWith(color: titleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

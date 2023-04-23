import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double width;
  final Color cardColor;

  const CustomCard({Key? key, required this.child, required this.width, required this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),),
        color: cardColor,
        child: child,
      ),
    );
  }
}

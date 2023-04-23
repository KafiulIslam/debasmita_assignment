import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final double? width;

  const CustomCard({Key? key, this.child, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),),
        color: ass,
        child: child,
      ),
    );
  }
}

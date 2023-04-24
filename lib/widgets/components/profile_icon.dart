import 'package:flutter/material.dart';
import '../../utils/color.dart';

class ProfileIcon extends StatelessWidget {
  final Color color;
  final double radius;
  final IconData icon;

  const ProfileIcon(
      {Key? key, this.color = const Color(0xFF262427), required this.radius, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: Icon(
        icon,
        color: white,
      ),
    );
  }
}

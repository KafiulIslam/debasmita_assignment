import 'package:debasmita_assignment/utils/color.dart';
import 'package:debasmita_assignment/utils/text_string.dart';
import 'package:debasmita_assignment/widgets/components/custom_card.dart';
import 'package:flutter/material.dart';
import '../../utils/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomCard(
                width: screenWidth / 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(bringing, style: header1.copyWith(fontSize: 70)),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: _hireMeButton()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget _hireMeButton() {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          icon: const Icon(
            Icons.front_hand_rounded,
            color: Colors.amber,
          ),
          label: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Hire Me',
              style: sixteenWhiteStyle,
            ),
          ),
        ));
  }

}

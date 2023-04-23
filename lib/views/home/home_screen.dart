import 'package:debasmita_assignment/utils/color.dart';
import 'package:debasmita_assignment/utils/text_string.dart';
import 'package:debasmita_assignment/widgets/components/custom_card.dart';
import 'package:flutter/material.dart';
import '../../utils/typography.dart';
import '../../widgets/components/experience_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final List<ExperienceCard> experienceList = [
    ExperienceCard(color: green, number: '2+', title: 'Your Experience'),
    ExperienceCard(color: yellow, number: '54+', title: 'Handled Project', titleColor: black),
    ExperienceCard(color: red, number: '40+', title: 'Clients'),
  ];

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
              Row(children: [
                Column(children: [
                  _hireMe(screenWidth),
                  const SizedBox(height: 8.0,),
                  _experience(screenWidth),

                ],)
              ],)
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

 CustomCard _hireMe(double width) {

    return CustomCard(
      width: width / 2,
      cardColor: ass,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(bringing, style: header1.copyWith(fontSize: 70)),
            const SizedBox(height: 16.0,),
            Align(
                alignment: Alignment.bottomRight,
                child: _hireMeButton()),
          ],
        ),
      ),
    );
 }

 Widget _experience(double width) {

    return Container(
      height: 220,
      width: width / 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: experienceList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8.0,),
        itemBuilder: (BuildContext context, int index) {
          return experienceList[index];
        },
      ),
    );
  }

}

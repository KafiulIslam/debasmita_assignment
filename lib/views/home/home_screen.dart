import 'package:debasmita_assignment/utils/color.dart';
import 'package:debasmita_assignment/utils/image_path.dart';
import 'package:debasmita_assignment/utils/spacer.dart';
import 'package:debasmita_assignment/utils/text_string.dart';
import 'package:debasmita_assignment/widgets/components/custom_card.dart';
import 'package:debasmita_assignment/widgets/components/profile_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    ExperienceCard(
        color: yellow,
        number: '54+',
        title: 'Handled Project',
        titleColor: black),
    ExperienceCard(color: red, number: '40+', title: 'Clients'),
    ExperienceCard(color: green, number: '2+', title: 'Your Experience'),
    ExperienceCard(
        color: yellow,
        number: '54+',
        title: 'Handled Project',
        titleColor: black),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _hireMe(screenWidth),
                      const SizedBox(
                        height: 8.0,
                      ),
                      _experience(screenWidth),
                    ],
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ass,
                            contentPadding: EdgeInsets.all(24.0),
                            hintText: 'BimGraph',
                            hintStyle: sixteenWhiteStyle,
                            suffixIcon: Icon(
                              Icons.menu,
                              color: white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                       primaryVSpacer,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 400,
                              width: screenWidth / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: buttonColor,
                                  image: const DecorationImage(
                                      image: AssetImage(profilePic),
                                      fit: BoxFit.cover)),
                            ),
                            primaryHSpacer,
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomCard(
                                    width: double.infinity,
                                    cardColor: ass,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 24.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Name:',
                                            style: fourteenWhiteStyle.copyWith(
                                                color: Colors.white70),
                                          ),
                                          Text(
                                            'Kafiul Islam',
                                            style: sixteenWhiteStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomCard(
                                    width: double.infinity,
                                    cardColor: ass,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 24.0),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Based in:',
                                              style: fourteenWhiteStyle.copyWith(
                                                  color: Colors.white70),
                                            ),
                                            Text(
                                              'Bogura, Bangladesh',
                                              style: sixteenWhiteStyle,
                                            ),
                                          ],
                                        ),
                                        Image.asset(location),
                                      ],),
                                    ),
                                  ),
                                  CustomCard(
                                    width: double.infinity,
                                    cardColor: ass,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                         ProfileIcon( radius: 25, icon: FontAwesomeIcons.linkedin, color: Colors.blue,),
                                          ProfileIcon( radius: 25, icon: FontAwesomeIcons.twitter),
                                          ProfileIcon( radius: 25, icon: FontAwesomeIcons.instagram),
                                          ProfileIcon( radius: 25, icon: FontAwesomeIcons.facebook),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
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

  CustomCard _hireMe(double width) {
    return CustomCard(
      width: width / 2,
      cardColor: ass,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(bringing, style: header1.copyWith(fontSize: 70)),
            const SizedBox(
              height: 16.0,
            ),
            Align(alignment: Alignment.bottomRight, child: _hireMeButton()),
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
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return experienceList[index];
        },
      ),
    );
  }
}

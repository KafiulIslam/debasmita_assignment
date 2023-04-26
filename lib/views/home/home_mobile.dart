import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/color.dart';
import '../../utils/image_path.dart';
import '../../utils/spacer.dart';
import '../../utils/text_string.dart';
import '../../utils/typography.dart';
import '../../widgets/components/custom_card.dart';
import '../../widgets/components/experience_card.dart';
import '../../widgets/components/portfolio_card.dart';
import '../../widgets/components/profile_icon.dart';

class HomeMobile extends StatefulWidget {
  final List<ExperienceCard> experienceList;
  final List<PortfolioCard> portfolioList;

  const HomeMobile(
      {Key? key, required this.experienceList, required this.portfolioList})
      : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _hireMe(screenWidth),
            const SizedBox(
              height: 32.0,
            ),
            _experience(screenWidth),
            const SizedBox(
              height: 32.0,
            ),
            _profile(screenWidth),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              'Portfolio',
              style: header2.copyWith(color: white),
            ),
            _portfolio(screenWidth),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              'Portfolio',
              style: header2.copyWith(color: white),
            ),
            _about(screenWidth),
          ],
        ),
      ),
    );
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
      width: width,
      cardColor: ass,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(bringing, style: header1),
            const SizedBox(
              height: 16.0,
            ),
            Align(alignment: Alignment.bottomRight, child: _hireMeButton()),
          ],
        ),
      ),
    );
  }

  Column _experience(double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Experience',
          style: header2.copyWith(color: white),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 220,
          width: width,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: widget.experienceList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return widget.experienceList[index];
            },
          ),
        ),
      ],
    );
  }

  CustomCard _portfolio(double width) {
    return CustomCard(
        width: width,
        cardColor: ass,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'UI Portfolio',
                    style: header2.copyWith(color: white),
                  ),
                  Text(
                    'See All',
                    style: header2.copyWith(color: Colors.white70),
                  ),
                ],
              ),
              primaryVSpacer,
              Container(
                height: 250,
                width: width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.portfolioList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      primaryHSpacer,
                  itemBuilder: (BuildContext context, int index) {
                    return widget.portfolioList[index];
                  },
                ),
              )
            ],
          ),
        ));
  }

  CustomCard _about(double width) {
    return CustomCard(
        width: width,
        cardColor: ass,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: header2.copyWith(color: white),
                  ),
                  Text(
                    'Resume',
                    style: header2.copyWith(color: Colors.white70),
                  ),
                ],
              ),
              primaryVSpacer,
              Container(
                height: 250,
                width: width,
                child: Text(
                  bio,
                  style: sixteenDeepAssStyle.copyWith(color: Colors.white70),
                ),
              )
            ],
          ),
        ));
  }

  Widget _profile(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Profile',
          style: header2.copyWith(color: white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ass,
              contentPadding: EdgeInsets.all(24.0),
              hintText: 'BimGraph',
              hintStyle: sixteenWhiteStyle,
              suffixIcon: const Icon(
                Icons.menu,
                color: white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 280,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: buttonColor,
                image: const DecorationImage(
                    image: AssetImage(profilePic), fit: BoxFit.cover)),
          ),
        ),
        CustomCard(
          width: double.infinity,
          cardColor: ass,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name:',
                  style: fourteenWhiteStyle.copyWith(color: Colors.white70),
                ),
                const Text(
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
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Based in:',
                      style: fourteenWhiteStyle.copyWith(color: Colors.white70),
                    ),
                    const Text(
                      'Bogura, Bangladesh',
                      style: sixteenWhiteStyle,
                    ),
                  ],
                ),
                Image.asset(location),
              ],
            ),
          ),
        ),
        CustomCard(
          width: double.infinity,
          cardColor: ass,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProfileIcon(
                  radius: 25,
                  icon: FontAwesomeIcons.linkedin,
                  color: Colors.blue,
                ),
                ProfileIcon(radius: 25, icon: FontAwesomeIcons.twitter),
                ProfileIcon(radius: 25, icon: FontAwesomeIcons.instagram),
                ProfileIcon(radius: 25, icon: FontAwesomeIcons.facebook),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

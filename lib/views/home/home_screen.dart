import 'package:debasmita_assignment/utils/color.dart';
import 'package:debasmita_assignment/utils/image_path.dart';
import 'package:debasmita_assignment/utils/spacer.dart';
import 'package:debasmita_assignment/utils/text_string.dart';
import 'package:debasmita_assignment/views/home/home_mobile.dart';
import 'package:debasmita_assignment/views/home/home_web.dart';
import 'package:debasmita_assignment/widgets/components/custom_card.dart';
import 'package:debasmita_assignment/widgets/components/portfolio_card.dart';
import 'package:debasmita_assignment/widgets/components/profile_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/typography.dart';
import '../../widgets/components/experience_card.dart';
import 'home_pad.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // final List<ExperienceCard> experienceList = const [
  //   ExperienceCard(color: green, number: '2+', title: 'Your Experience'),
  //   ExperienceCard(
  //       color: yellow,
  //       number: '54+',
  //       title: 'Handled Project',
  //       titleColor: black),
  //   ExperienceCard(color: red, number: '40+', title: 'Clients'),
  //   ExperienceCard(color: green, number: '2+', title: 'Your Experience'),
  //   ExperienceCard(
  //       color: yellow,
  //       number: '54+',
  //       title: 'Handled Project',
  //       titleColor: black),
  //   ExperienceCard(color: red, number: '40+', title: 'Clients'),
  // ];
  //
  // final List<PortfolioCard> portfolioList = const [
  //   PortfolioCard(imagePath: webImage, isFirstPortfolio: true),
  //   PortfolioCard(imagePath: webImage),
  //   PortfolioCard(imagePath: webImage),
  //   PortfolioCard(imagePath: webImage),
  //   PortfolioCard(imagePath: webImage),
  //   PortfolioCard(imagePath: webImage),
  // ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth < 480){
              ///mobile
              return const HomeMobile();
            }else if (constraints.maxWidth < 800){
              /// pad
              return const HomePad();
            } else{
              ///web or desktoop
              return const HomeWeb();
            }
          }),
    ));
  }

  // Widget _hireMeButton() {
  //   return Directionality(
  //       textDirection: TextDirection.rtl,
  //       child: ElevatedButton.icon(
  //         onPressed: () {},
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: buttonColor,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(16.0),
  //           ),
  //         ),
  //         icon: const Icon(
  //           Icons.front_hand_rounded,
  //           color: Colors.amber,
  //         ),
  //         label: const Padding(
  //           padding: EdgeInsets.symmetric(vertical: 12.0),
  //           child: Text(
  //             'Hire Me',
  //             style: sixteenWhiteStyle,
  //           ),
  //         ),
  //       ));
  // }
  //
  // CustomCard _hireMe(double width) {
  //   return CustomCard(
  //     width: width / 2,
  //     cardColor: ass,
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         children: [
  //           Text(bringing, style: header1.copyWith(fontSize: 70)),
  //           const SizedBox(
  //             height: 16.0,
  //           ),
  //           Align(alignment: Alignment.bottomRight, child: _hireMeButton()),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _experience(double width) {
  //   return Container(
  //     height: 220,
  //     width: width / 2,
  //     child: ListView.separated(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: experienceList.length,
  //       separatorBuilder: (BuildContext context, int index) => const SizedBox(
  //         width: 8.0,
  //       ),
  //       itemBuilder: (BuildContext context, int index) {
  //         return experienceList[index];
  //       },
  //     ),
  //   );
  // }
  //
  // CustomCard _portfolio(double width) {
  //   return CustomCard(
  //       width: width / 1.8,
  //       cardColor: ass,
  //       child: Padding(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   'UI Portfolio',
  //                   style: header2.copyWith(color: white),
  //                 ),
  //                 Text(
  //                   'See All',
  //                   style: header2.copyWith(color: Colors.white70),
  //                 ),
  //               ],
  //             ),
  //             primaryVSpacer,
  //             Container(
  //               height: 250,
  //               width: width / 1.8,
  //               child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 itemCount: portfolioList.length,
  //                 separatorBuilder: (BuildContext context, int index) =>
  //                     primaryHSpacer,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return portfolioList[index];
  //                 },
  //               ),
  //             )
  //           ],
  //         ),
  //       ));
  // }
  //
  // Expanded _about(double width) {
  //   return Expanded(
  //     child: CustomCard(
  //         width: width / 2.5,
  //         cardColor: ass,
  //         child: Padding(
  //           padding: const EdgeInsets.all(16.0),
  //           child: Column(
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     'About',
  //                     style: header2.copyWith(color: white),
  //                   ),
  //                   Text(
  //                     'Resume',
  //                     style: header2.copyWith(color: Colors.white70),
  //                   ),
  //                 ],
  //               ),
  //               primaryVSpacer,
  //               Container(
  //                 height: 250,
  //                 width: width / 1.8,
  //                 child: Text(
  //                   bio,
  //                   style: sixteenDeepAssStyle.copyWith(color: Colors.white70),
  //                 ),
  //               )
  //             ],
  //           ),
  //         )),
  //   );
  // }

}

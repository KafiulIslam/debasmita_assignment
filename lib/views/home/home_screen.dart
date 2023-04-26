import 'package:debasmita_assignment/utils/color.dart';
import 'package:debasmita_assignment/utils/image_path.dart';
import 'package:debasmita_assignment/views/home/home_mobile.dart';
import 'package:debasmita_assignment/views/home/home_small_desktop.dart';
import 'package:debasmita_assignment/views/home/home_web.dart';
import 'package:debasmita_assignment/widgets/components/portfolio_card.dart';
import 'package:flutter/material.dart';
import '../../widgets/components/experience_card.dart';
import 'home_pad.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<ExperienceCard> experienceList = const [
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

  final List<PortfolioCard> portfolioList = const [
    PortfolioCard(imagePath: webImage, isFirstPortfolio: true),
    PortfolioCard(imagePath: webImage),
    PortfolioCard(imagePath: webImage),
    PortfolioCard(imagePath: webImage),
    PortfolioCard(imagePath: webImage),
    PortfolioCard(imagePath: webImage),
  ];

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth < 480){
              /// mobile
              return HomeMobile(experienceList: experienceList, portfolioList: portfolioList,);
            }else if (constraints.maxWidth < 768){
              /// pad
              return HomePad(experienceList: experienceList, portfolioList: portfolioList,);
            }else if(constraints.maxWidth < 1100){
              /// small desktop screen
              return HomeSmallDesktop(experienceList: experienceList, portfolioList: portfolioList,);
            }else{
              /// web or desktoop
              return HomeWeb(experienceList: experienceList, portfolioList: portfolioList,);
            }
          }),
    ));
  }
}

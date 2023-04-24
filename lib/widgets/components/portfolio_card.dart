import 'package:debasmita_assignment/utils/image_path.dart';
import 'package:debasmita_assignment/utils/typography.dart';
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final String imagePath;
  final bool isFirstPortfolio;

  const PortfolioCard(
      {Key? key, required this.imagePath, this.isFirstPortfolio = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                  image: AssetImage(webImage), fit: BoxFit.cover)),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imagePath,
              height: 250,
              width: 250,
            )),
        isFirstPortfolio == false
            ? SizedBox.shrink()
            : Container(
                alignment: Alignment.center,
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black.withOpacity(0.4)),
                child: const Text(
                  'Read More',
                  style: sixteenWhiteStyle,
                ),
              )
      ],
    );
  }
}

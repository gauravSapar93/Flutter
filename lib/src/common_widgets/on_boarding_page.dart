import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final onBiardingModel model;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: screenSize.height * 0.5,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28, // Set the text color to blue
                ),
                textAlign: TextAlign.center,
              ),
              Text(model.subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18, // Set the text color to blue
                  )),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}

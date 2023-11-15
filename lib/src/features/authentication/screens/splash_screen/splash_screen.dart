import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Image(image: AssetImage(tSplashTopIcon)),
          ),
          Positioned(
            top: 80,
            left: tDefaultSize,
            child: Column(
              children: [Text(tAppName), Text(tAppTagLine)],
            ),
          )
        ],
      ),
    );
  }
}

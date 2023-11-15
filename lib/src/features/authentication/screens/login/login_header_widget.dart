import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          tWellcomeImage,
          height: size.height * 0.30,
          alignment: Alignment.center,
        ),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 21.0, // Adjust the font size as needed
              ),
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

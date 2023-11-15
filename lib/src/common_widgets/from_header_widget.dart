import 'package:flutter/material.dart';

class FromHeaderWidget extends StatelessWidget {
  const FromHeaderWidget({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.heightBetween,
    required this.crossAxisAlignment,
    this.textAlign,
  });
  final String image, title, subTitle;
  final Size size;
  final double heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image.network(
          image,
          height: size.height * 0.20,
          alignment: Alignment.center,
        ),
        SizedBox(height: heightBetween),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 21.0, // Adjust the font size as needed
              ),
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

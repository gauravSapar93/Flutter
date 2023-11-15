import 'package:flutter/material.dart';
import 'package:flutter_application/src/common_widgets/from_header_widget.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SizedBox(
                height: tDefaultSize * 4,
              ),
              FromHeaderWidget(
                size: MediaQuery.of(context).size,
                image: tforgetPassword,
                title: tForgetPassword,
                subTitle: tForgetPasswordSubTitle,
                heightBetween: 30.0,
                crossAxisAlignment: CrossAxisAlignment.center,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: tFormHeight,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(tPhone),
                        hintText: tPhone,
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child:
                          ElevatedButton(onPressed: () {}, child: Text(tNext)))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

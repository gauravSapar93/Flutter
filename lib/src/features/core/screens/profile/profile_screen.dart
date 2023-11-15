import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:flutter_application/src/features/core/screens/profile/widget/profile_menu_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarlMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDarlMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(LineAwesomeIcons.angle_left),
          color: iconColor,
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                isDarlMode ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
                color: iconColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(image: NetworkImage(tProfileImage))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tAccentColor),
                      child: Icon(LineAwesomeIcons.alternate_pencil,
                          color: tPrimaryColor, size: 20),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(
                tProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UpdateProfileScreen(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      tEditProfile,
                      style: TextStyle(color: tDarlColor),
                    )),
              ),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 10),
              ProfileMenuWidget(
                title: tMenu1,
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: tMenu2,
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: tMenu3,
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              ProfileMenuWidget(
                title: tMenu4,
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: tMenu5,
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {
                  ;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

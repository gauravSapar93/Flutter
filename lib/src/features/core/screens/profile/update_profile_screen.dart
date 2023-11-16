import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/models/user_model.dart';
import 'package:flutter_application/src/features/core/controllers/profileController/profile_controller.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controll = Get.put(ProfileController());
    var isDarlMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDarlMode ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(LineAwesomeIcons.angle_left),
            color: iconColor,
          ),
          title: Text(
            tEditProfile,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(tDefaultSize),
                child: FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        UserModel usermodel = snapshot.data as UserModel;
                        return Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image(
                                          image: NetworkImage(tProfileImage))),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: tAccentColor),
                                    child: Icon(LineAwesomeIcons.camera,
                                        color: tPrimaryColor, size: 20),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 50),
                            Form(
                                child: Column(
                              children: [
                                TextFormField(
                                  initialValue: usermodel.fullName,
                                  decoration: InputDecoration(
                                    label: Text(tFullName),
                                    prefixIcon:
                                        Icon(Icons.person_outline_rounded),
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  initialValue: usermodel.email,
                                  decoration: InputDecoration(
                                    label: Text(tEmail),
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  initialValue: usermodel.phoneNo,
                                  decoration: InputDecoration(
                                    label: Text(tPhone),
                                    prefixIcon: Icon(Icons.phone),
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  initialValue: usermodel.password,
                                  decoration: InputDecoration(
                                    label: Text(tPassword),
                                    prefixIcon: Icon(Icons.fingerprint),
                                  ),
                                ),
                                SizedBox(height: tFormHeight),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              UpdateProfileScreen(),
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
                                SizedBox(height: tFormHeight),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(TextSpan(
                                        text: tJoined,
                                        style: TextStyle(fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: tJoinedAt,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12))
                                        ])),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(tDelete),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.redAccent.withOpacity(0.1),
                                          elevation: 0,
                                          foregroundColor: Colors.red,
                                          shape: StadiumBorder(),
                                          side: BorderSide.none),
                                    )
                                  ],
                                )
                              ],
                            ))
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Center(child: Text(snapshot.error.toString()));
                      } else {
                        return Center(child: Text("Something whent wrong"));
                      }
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                  future: controll.getUserData(),
                ))));
  }
}

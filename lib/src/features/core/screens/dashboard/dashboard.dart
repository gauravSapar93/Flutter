import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/constants/sizes.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/core/screens/profile/profile_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // Change the color of the menu icon here
        ),
        title: Text(
          tAppName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: tCardBackgroundColor),
            child: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
              },
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add your logic for Item 1
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add your logic for Item 2
                Navigator.pop(context);
              },
            ),
            // Add more ListTiles for additional items
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTtile, style: textTheme.bodyMedium),
              Text(tDashboardHeading, style: textTheme.headlineMedium),
              SizedBox(height: tdashboardCartPadding),
              Container(
                decoration:
                    BoxDecoration(border: Border(left: BorderSide(width: 4))),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tDashboardSearch,
                        style: textTheme.headlineSmall
                            ?.apply(color: Colors.grey.withOpacity(0.5))),
                    Icon(Icons.mic, size: 25),
                  ],
                ),
              ),
              SizedBox(height: tdashboardCartPadding),
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: tDarlColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.titleMedium
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Java Script",
                                    style: textTheme.titleMedium,
                                    overflow: TextOverflow.clip),
                                Text("10 Lessons",
                                    style: textTheme.bodySmall,
                                    overflow: TextOverflow.clip),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: tDarlColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.titleMedium
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Java Script",
                                    style: textTheme.titleMedium,
                                    overflow: TextOverflow.clip),
                                Text("10 Lessons",
                                    style: textTheme.bodySmall,
                                    overflow: TextOverflow.clip),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: tDarlColor),
                            child: Center(
                              child: Text(
                                "JS",
                                style: textTheme.titleMedium
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Java Script",
                                    style: textTheme.titleMedium,
                                    overflow: TextOverflow.clip),
                                Text("10 Lessons",
                                    style: textTheme.bodySmall,
                                    overflow: TextOverflow.clip),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: tdashboardPadding),
                    //Banner
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

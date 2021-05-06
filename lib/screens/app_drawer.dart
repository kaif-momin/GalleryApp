import 'package:flutter/material.dart';
import 'package:galleryapp/screens/settings_screen.dart';
import 'package:galleryapp/utils/colors.dart';
import 'package:galleryapp/widgets/drawer_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
        width: MediaQuery.of(context).size.width * 0.70,
        child: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      ConstColors.primaryDark,
                      ConstColors.primaryLight
                    ]),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DrawerItem(
                      icon: FontAwesomeIcons.cogs,
                      labelText: "Settings",
                      fontSize: 18,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => SettingScreen(),
                          ),
                        );
                      },
                    ),
                    DrawerItem(
                      icon: FontAwesomeIcons.fileImage,
                      labelText: "Gallery",
                      fontSize: 18,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

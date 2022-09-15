// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dolphy/presentation/pages/profil/page/profile_page.dart';
import 'package:dolphy/presentation/pages/profil/page/edit_profile_page.dart';
import 'package:dolphy/presentation/pages/profil/utils/user_preferences.dart';
import 'package:dolphy/presentation/pages/profil/widget/appbar_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/button_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/numbers_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/profile_widget.dart';

import '../../../../models/user.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      backgroundColor: appBackgroundColor,
      // appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.pseudo,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.name,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'hehehe',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              't',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.password,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}

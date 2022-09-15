import 'dart:io';

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:dolphy/models/user.dart';
import 'package:dolphy/presentation/pages/profil/utils/user_preferences.dart';
import 'package:dolphy/presentation/pages/profil/widget/appbar_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/button_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/profile_widget.dart';
import 'package:dolphy/presentation/pages/profil/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Pseudo',
              text: user.pseudo,
              onChanged: (email) {},
            ),
           
            const SizedBox(height: 24),
            TextFieldWidget(
              readonly: true,
              label: 'nom complet',
              text: user.name,
              onChanged: (name) {},
            ),
            
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Mot de passe',
              text: user.password,
              // maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
}

import 'package:AnimalPedia/data/user_preference.dart';
import 'package:AnimalPedia/shared/user.dart';
import 'package:AnimalPedia/widget/buttonwidget.dart';
import 'package:AnimalPedia/widget/profilewidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24,),
          buildName(user),
          // const SizedBox(height: 24,),
          // Center(child: buildUpgradeButton()),
          Padding(padding: const EdgeInsets.only(top: 24),
          child: buildAbout(user))
        ],
      ),
    );
  }
}

Widget buildName(user) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        user.name,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8,),
      Text(
        user.email,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    ],
  ),
);

// Widget buildUpgradeButton() => ButtonWidget(
//   text: 'Upgrade',
//   onClicked: () {},
// );

Widget buildAbout(User user) => Container(
  padding: EdgeInsets.symmetric(horizontal: 48),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'About',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 7,),
      Text(
        user.about,
        style: TextStyle(
          fontSize: 14,
          height: 1.4
        ),
      )
    ],
  ),
);
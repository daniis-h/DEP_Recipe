import 'package:flutter/material.dart';
import 'package:recipe_app/size_config.dart';

import 'info.dart';
import 'profile_menu_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/profile_picture.png",
            name: "Alex Smith",
            email: "alex.smith@example.com",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), //20
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Bookmarked Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_hat.svg",
            title: "Premium Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/globe.svg",
            title: "Switch Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/help.svg",
            title: "Support",
            press: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/profile/components/profile_body.dart';
import 'package:recipe_app/size_config.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: ProfileBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("User Profile"),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6, // 16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

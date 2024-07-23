import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/components/custom_bottom_nav_bar.dart';
import 'package:recipe_app/screens/home/components/home_body.dart';
import 'package:recipe_app/size_config.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: HomeBody(),
      // BottomNavigationBar does not support SVG icons directly
      // Using a custom BottomNavigationBar and Provider for state management
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Image.asset("assets/images/logo.png"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          width: SizeConfig.defaultSize * 0.5, // 5 based on defaultSize = 10
        ),
      ],
    );
  }
}

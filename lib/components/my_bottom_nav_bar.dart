import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/models/nav_item.dart'; // Assuming NavItem is renamed to nav_item.dart
import 'package:recipe_app/size_config.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3), // 30
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30,
              color: Color(0xFF4B1A39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.items.length,
              (index) => _buildNavBarItem(
                isActive: navItems.selectedIndex == index,
                iconPath: navItems.items[index].icon,
                onTap: () {
                  navItems.updateSelectedIndex(index);
                  if (navItems.items[index].hasDestination()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navItems.items[index].destination,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton _buildNavBarItem({
    required String iconPath,
    required VoidCallback onTap,
    bool isActive = false,
  }) {
    return IconButton(
      icon: SvgPicture.asset(
        iconPath,
        color: isActive ? kPrimaryColor : Color(0xFFD1D4D4),
        height: 22,
      ),
      onPressed: onTap,
    );
  }
}

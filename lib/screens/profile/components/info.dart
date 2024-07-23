import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.name,
    required this.email,
    required this.imagePath,
  }) : super(key: key);

  final String name;
  final String email;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24, // 240
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              height: defaultSize * 15, // 150
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize), // 10
                  height: defaultSize * 14, // 140
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: defaultSize * 0.8, // 8
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2, // 22
                    color: kTextColor,
                  ),
                ),
                SizedBox(height: defaultSize / 2), // 5
                Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8492A2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

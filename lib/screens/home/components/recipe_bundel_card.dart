import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/models/recipe_bundle.dart';

import '../../../size_config.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle bundle;
  final VoidCallback onTap;

  const RecipeBundleCard({
    Key? key,
    required this.bundle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bundle.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8), // 18
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2), // 20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      bundle.title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2, // 22
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5), // 5
                    Text(
                      bundle.description,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    _buildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icons/pot.svg",
                      text: "${bundle.recipes} Recipes",
                    ),
                    SizedBox(height: defaultSize * 0.5), // 5
                    _buildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icons/chef.svg",
                      text: "${bundle.chefs} Chefs",
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5), // 5
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                bundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildInfoRow(double defaultSize, {required String iconSrc, required String text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(width: defaultSize), // 10
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

// CategoryList needs to be a StatefulWidget to manage selection state

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  // Initially, the first category is selected
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5, // 35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize * 2, // 20
          vertical: SizeConfig.defaultSize * 0.5, // 5
        ),
        decoration: BoxDecoration(
          color: selectedCategoryIndex == index
              ? Color(0xFFEFF3EE)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 1.6, // 16
          ),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedCategoryIndex == index
                ? kPrimaryColor
                : Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}

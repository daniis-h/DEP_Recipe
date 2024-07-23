import 'package:flutter/material.dart';

class RecipeBundle {
  final int id;
  final int chefs;
  final int recipes;
  final String title;
  final String description;
  final String imageSrc;
  final Color color;

  RecipeBundle({
    required this.id,
    required this.chefs,
    required this.recipes,
    required this.title,
    required this.description,
    required this.imageSrc,
    required this.color,
  });
}

// Sample data for demonstration
List<RecipeBundle> sampleRecipeBundles = [
  RecipeBundle(
    id: 1,
    chefs: 16,
    recipes: 95,
    title: "Explore New Recipes Daily",
    description: "Discover new and exciting recipes every day.",
    imageSrc: "assets/images/cook_new@2x.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    id: 2,
    chefs: 8,
    recipes: 26,
    title: "Top Recipes of 2020",
    description: "Delicious recipes perfect for special occasions.",
    imageSrc: "assets/images/best_2020@2x.png",
    color: Color(0xFF90AF17),
  ),
  RecipeBundle(
    id: 3,
    chefs: 10,
    recipes: 43,
    title: "Food Court Favorites",
    description: "Cook your favorite food dishes now.",
    imageSrc: "assets/images/food_court@2x.png",
    color: Color(0xFF2DBBD8),
  ),
];

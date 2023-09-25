import 'package:flutter/material.dart';
import 'package:cookbook/Widgets/recipe.dart';
import 'package:cookbook/data/recipe.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quick & Easy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(32, 26, 24, 1),
      ),
      body: ListView.builder(
          itemCount: recipeDummyInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeIsland(recipeInfo: recipeDummyInfo[index]);
          }),
    );
  }
}

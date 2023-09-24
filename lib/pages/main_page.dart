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
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
          itemCount: recipeDummyInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeIsland(recipeInfo: recipeDummyInfo[index]);
          }),
    );
  }
}

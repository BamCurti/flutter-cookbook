import 'package:flutter/material.dart';
import 'package:cookbook/data/recipe.dart';

class RecipeIsland extends StatelessWidget {
  final RecipeInfo recipeInfo;
  const RecipeIsland({super.key, required this.recipeInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(recipeInfo.imagePath),
              ),
            ),
            IslandTitle(recipeInfo: recipeInfo)
          ],
        ),
      ),
      onTap: () {
        print("I was clicked ${recipeInfo.title}");
      },
    );
  }
}

class IslandTitle extends StatelessWidget {
  final RecipeInfo recipeInfo;
  const IslandTitle({super.key, required this.recipeInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, .7),
      width: MediaQuery.of(context).size.width - 20,
      height: 70,
      child: Column(
        children: [
          Text(
            recipeInfo.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoText(option: recipeInfo.time(), data: Icons.access_alarm),
              InfoText(option: recipeInfo.difficulty, data: Icons.work),
              InfoText(option: recipeInfo.priceRange, data: Icons.attach_money),
            ],
          )
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String option;
  final IconData data;
  const InfoText({super.key, required this.option, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          data,
          color: Colors.white,
        ),
        Text(option, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

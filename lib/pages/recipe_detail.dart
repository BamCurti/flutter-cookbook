import 'package:flutter/material.dart';
import 'package:cookbook/data/recipe.dart';

class RecipeDetail extends StatelessWidget {
  RecipeInfo info;

  RecipeDetail({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          info.title,
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(32, 26, 24, 1),
        actions: [
          IconButton(
              onPressed: () {
                info.toogleFavorite();
                String inFavs = info.isFavorite ? "" : " no longer";
                String msg = "Meal$inFavs in favs";

                var snackbar = SnackBar(content: Text(msg));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              icon: const Icon(
                Icons.star,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(
            image: AssetImage(info.imagePath),
          ),
          const Subtitle(subtitle: "Ingredients"),
          Details(details: info.ingredients),
          const Subtitle(subtitle: "Steps"),
          Details(
            details: info.steps,
          )
        ]),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String subtitle;
  const Subtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
          color: Colors.orange, fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}

class Details extends StatelessWidget {
  List<String> details;
  Details({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: details.length,
        itemBuilder: (context, index) => Container(
              alignment: Alignment.center,
              child: Text(
                details[index],
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ));
  }
}

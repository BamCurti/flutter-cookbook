class RecipeInfo {
  final String title;
  final int timeOfPreparation;
  final String difficulty;
  final String priceRange;
  final String imagePath;
  final List<String> ingredients;
  final List<String> steps;

  RecipeInfo(
      {required this.title,
      required this.timeOfPreparation,
      required this.difficulty,
      required this.priceRange,
      required this.imagePath,
      required this.ingredients,
      required this.steps});

  String time() => "$timeOfPreparation min";
}

var recipeDummyInfo = [
  RecipeInfo(
      title: "Spaghetti with Tomato Sauce",
      timeOfPreparation: 20,
      difficulty: "Simple",
      priceRange: "Afforable",
      imagePath: "lib/assets/images/spaghetti.jpeg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "250g spaghetti",
        "Spices",
        "Cheese (optional)"
      ],
      steps: [
        "Cut the tomatoes and the onion into small pieces",
        "boil the water - add the salt to it once it boils"
      ]),
  RecipeInfo(
      title: "Toast Hawaii",
      timeOfPreparation: 10,
      difficulty: "Simple",
      priceRange: "Afforable",
      imagePath: "lib/assets/images/hawaii-toast.jpg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "250g spaghetti",
        "Spices",
        "Cheese (optional)"
      ],
      steps: [
        "Cut the tomatoes and the onion into small pieces",
        "boil the water - add the salt to it once it boils"
      ]),
  RecipeInfo(
      title: "Toast Hawaii",
      timeOfPreparation: 40,
      difficulty: "Simple",
      priceRange: "Expensive",
      imagePath: "lib/assets/images/hamburger.jpeg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "250g spaghetti",
        "Spices",
        "Cheese (optional)"
      ],
      steps: [
        "Cut the tomatoes and the onion into small pieces",
        "boil the water - add the salt to it once it boils"
      ]),
  RecipeInfo(
      title: "Cereal con leche",
      timeOfPreparation: 5,
      difficulty: "Simple",
      priceRange: "Afforable",
      imagePath: "lib/assets/images/cereal.jpeg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "250g spaghetti",
        "Spices",
        "Cheese (optional)"
      ],
      steps: [
        "Cut the tomatoes and the onion into small pieces",
        "boil the water - add the salt to it once it boils"
      ]),
];

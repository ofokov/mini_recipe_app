class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      "Spaghetti and Meatballs",
      "assets/spaghetti.jpg",
      4,
      [
        Ingredient(1, "box", "Spaghetti"),
        Ingredient(4, "", "Frozen Meatballs"),
        Ingredient(0.5, "jar", "sauce"),
      ],
    ),
    Recipe(
      "Tomato Soup",
      "assets/tomato_soup.jpg",
      2,
      [
        Ingredient(1, "can", "Tomato Soup"),
      ],
    ),
    Recipe(
      "Grilled Cheese",
      "assets/grilled_cheese.jpg",
      1,
      [
        Ingredient(2, "slices", "Cheese"),
        Ingredient(2, "slices", "Bread"),
      ],
    ),
    Recipe(
      "Chocolate Chip Cookies",
      "assets/chocolate_chip_cookie.jpg",
      24,
      [
        Ingredient(4, "cups", "flour"),
        Ingredient(2, "cups", "sugar"),
        Ingredient(0.5, "cups", "chocolate chips"),
      ],
    ),
    Recipe(
      "Taco Salad",
      "assets/taco_salad.jpg",
      1,
      [
        Ingredient(4, "oz", "nachos"),
        Ingredient(3, "oz", "taco meat"),
        Ingredient(0.5, "cup", "cheese"),
        Ingredient(0.25, "cup", "chopped tomatoes"),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

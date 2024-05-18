import 'package:day_1/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail(this.recipe, {super.key});

  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  late Recipe recipe;
  int _sliderVal = 1;

  @override
  void initState() {
    super.initState();
    recipe = widget.recipe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(recipe.imageUrl),
            ),
            SizedBox(height: 4),
            Text(
              recipe.label,
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final Ingredient ingredients = recipe.ingredients[index];
                  return Text(
                      "${ingredients.quantity * _sliderVal} ${ingredients.measure} ${ingredients.name}");
                },
              ),
            ),
            Slider(
              label: "${_sliderVal * recipe.servings}",
              value: _sliderVal.toDouble(),
              min: 1,
              max: 10,
              divisions: 10,
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

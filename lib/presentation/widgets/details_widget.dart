// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../core/Project_widgets/platform.dart';
import 'cardWidget.dart';

class MealDetailWidget extends StatelessWidget {
  final String strMealThumb;
  final String strMeal;
  final String strInstructions;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String? strIngredient16;
  final String? strIngredient17;
  final String? strIngredient18;
  final String? strIngredient19;
  final String? strIngredient20;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;

  final String strMeasure4;

  final String strMeasure5;

  final String strMeasure6;

  final String strMeasure7;

  final String strMeasure8;

  final String strMeasure9;

  final String strMeasure10;

  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String? strMeasure16;
  final String? strMeasure17;
  final String? strMeasure18;
  final String? strMeasure19;
  final String? strMeasure20;

  const MealDetailWidget(
      {super.key,
      required this.strMealThumb,
      required this.strMeal,
      required this.strInstructions,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      required this.strIngredient4,
      required this.strIngredient5,
      required this.strIngredient6,
      required this.strIngredient7,
      required this.strIngredient8,
      required this.strIngredient9,
      required this.strIngredient10,
      required this.strIngredient11,
      required this.strIngredient12,
      required this.strIngredient13,
      required this.strIngredient14,
      required this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      required this.strMeasure4,
      required this.strMeasure5,
      required this.strMeasure6,
      required this.strMeasure7,
      required this.strMeasure8,
      required this.strMeasure9,
      required this.strMeasure10,
      required this.strMeasure11,
      required this.strMeasure12,
      required this.strMeasure13,
      required this.strMeasure14,
      required this.strMeasure15,
      required this.strMeasure16,
      required this.strMeasure17,
      required this.strMeasure18,
      required this.strMeasure19,
      required this.strMeasure20});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Column(
        children: [
          !(Platform.isMobile(context))
              ? const SizedBox(
                  height: 10,
                )
              : const SizedBox(
                  height: 6,
                ),
          CardsWidget(strMealThumb),
          Text(
            strMeal,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      Column(children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 100,
              ),
              const Text(
                "Ingredient :",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                strMeasure1 +
                    "\t" +
                    strIngredient1 +
                    "\n" +
                    strMeasure2 +
                    "\t" +
                    strIngredient2 +
                    "\n" +
                    strMeasure3 +
                    "\t" +
                    strIngredient3 +
                    "\n" +
                    strMeasure4 +
                    "\t" +
                    strIngredient4 +
                    "\n" +
                    strMeasure5 +
                    "\t" +
                    strIngredient5 +
                    "\n" +
                    strMeasure6 +
                    "\t" +
                    strIngredient6 +
                    "\n" +
                    strMeasure7 +
                    "\t" +
                    strIngredient7 +
                    "\n" +
                    strMeasure8 +
                    "\t" +
                    strIngredient8 +
                    "\n" +
                    strMeasure9 +
                    "\t" +
                    strIngredient9 +
                    "\n" +
                    strMeasure10 +
                    "\t" +
                    strIngredient10 +
                    "\n" +
                    strMeasure11 +
                    "\t" +
                    strIngredient11 +
                    "\n" +
                    strMeasure12 +
                    "\t" +
                    strIngredient12 +
                    "\n" +
                    strMeasure13 +
                    "\t" +
                    strIngredient13 +
                    "\n" +
                    strMeasure14 +
                    "\t" +
                    strIngredient14 +
                    "\n" +
                    strMeasure15 +
                    "\t" +
                    strIngredient15 +
                    "\n" +
                    (strMeasure16 ?? "") +
                    "\t" +
                    (strIngredient16 ?? "") +
                    (strMeasure17 ?? "") +
                    "\t" +
                    (strIngredient17 ?? "") +
                    (strMeasure18 ?? "") +
                    "\t" +
                    (strIngredient18 ?? "") +
                    (strMeasure19 ?? "") +
                    "\t" +
                    (strIngredient19 ?? "") +
                    (strMeasure20 ?? "") +
                    "\t" +
                    (strIngredient20 ?? ""),
                style: const TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Instructions :",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: (Platform.isMobile(context))
                    ? 500
                    : (Platform.isTablet(context))
                        ? 250
                        : 500,
                child: Text(
                  strInstructions,
                  maxLines: null,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ])
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context, () {});
              },
            ),
            title: Text(strMeal),
          ),
          Platform.isMobile(context)
              ? Column(children: widgets)
              : SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: widgets,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )),
        ],
      ),
    );
  }
}

// ignore_for_file: unnecessary_type_check, unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/data-sourses/global_data_sources/global_operations_imp.dart';
import 'package:themealdb/features/data/models/categories_details_model.dart';
import 'package:themealdb/features/data/models/details_meals_model.dart';
import 'package:themealdb/features/data/models/meal_areas_model.dart';
import 'package:themealdb/features/data/models/meal_ingredients_model.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

void main() {
  group("Testing Global operations", () {
    test('Testing  global MealAreasModel ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {"strArea": "American"},
          {"strArea": "British"},
          {"strArea": "Canadian"},
          {"strArea": "Chinese"},
          {"strArea": "Croatian"},
          {"strArea": "Dutch"},
          {"strArea": "Egyptian"},
          {"strArea": "Filipino"},
          {"strArea": "French"},
          {"strArea": "Greek"},
          {"strArea": "Indian"},
          {"strArea": "Irish"},
          {"strArea": "Italian"},
          {"strArea": "Jamaican"},
          {"strArea": "Japanese"},
          {"strArea": "Kenyan"},
          {"strArea": "Malaysian"},
          {"strArea": "Mexican"},
          {"strArea": "Moroccan"},
          {"strArea": "Polish"},
          {"strArea": "Portuguese"},
          {"strArea": "Russian"},
          {"strArea": "Spanish"},
          {"strArea": "Thai"},
          {"strArea": "Tunisian"},
          {"strArea": "Turkish"},
          {"strArea": "Unknown"},
          {"strArea": "Vietnamese"}
        ]
      };
      MealAreasModel model = MealAreasModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global.getMealsArea(AreaParams("list"));

      MealAreasModel model2 = MealAreasModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global getCategoriesDetails ', () async {
      Map<String, dynamic> json = {
        "categories": [
          {
            "idCategory": "1",
            "strCategory": "Beef",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/beef.png",
            "strCategoryDescription":
                "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
          },
          {
            "idCategory": "2",
            "strCategory": "Chicken",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/chicken.png",
            "strCategoryDescription":
                "Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets."
          },
          {
            "idCategory": "3",
            "strCategory": "Dessert",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/dessert.png",
            "strCategoryDescription":
                "Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.\r\n\r\nThe term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, and sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts."
          },
          {
            "idCategory": "4",
            "strCategory": "Lamb",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/lamb.png",
            "strCategoryDescription":
                "Lamb, hogget, and mutton are the meat of domestic sheep (species Ovis aries) at different ages.\r\n\r\nA sheep in its first year is called a lamb, and its meat is also called lamb. The meat of a juvenile sheep older than one year is hogget; outside the USA this is also a term for the living animal. The meat of an adult sheep is mutton, a term only used for the meat, not the living animals. The term mutton is almost always used to refer to goat meat in the Indian subcontinent.\r\n\r\n"
          },
          {
            "idCategory": "5",
            "strCategory": "Miscellaneous",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/miscellaneous.png",
            "strCategoryDescription":
                "General foods that don't fit into another category"
          },
          {
            "idCategory": "6",
            "strCategory": "Pasta",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/pasta.png",
            "strCategoryDescription":
                "Pasta is a staple food of traditional Italian cuisine, with the first reference dating to 1154 in Sicily.\r\n\r\nAlso commonly used to refer to the variety of pasta dishes, pasta is typically a noodle made from an unleavened dough of a durum wheat flour mixed with water or eggs and formed into sheets or various shapes, then cooked by boiling or baking. As an alternative for those wanting a different taste, or who need to avoid products containing gluten, some pastas can be made using rice flour in place of wheat.[3][4] Pastas may be divided into two broad categories, dried (pasta secca) and fresh (pasta fresca)."
          },
          {
            "idCategory": "7",
            "strCategory": "Pork",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/pork.png",
            "strCategoryDescription":
                "Pork is the culinary name for meat from a domestic pig (Sus scrofa domesticus). It is the most commonly consumed meat worldwide,[1] with evidence of pig husbandry dating back to 5000 BC. Pork is eaten both freshly cooked and preserved. Curing extends the shelf life of the pork products. Ham, smoked pork, gammon, bacon and sausage are examples of preserved pork. Charcuterie is the branch of cooking devoted to prepared meat products, many from pork.\r\n\r\nPork is the most popular meat in Eastern and Southeastern Asia, and is also very common in the Western world, especially in Central Europe. It is highly prized in Asian cuisines for its fat content and pleasant texture. Consumption of pork is forbidden by Jewish and Muslim dietary law, a taboo that is deeply rooted in tradition, with several suggested possible causes. The sale of pork is limited in Israel and illegal in certain Muslim countries."
          },
          {
            "idCategory": "8",
            "strCategory": "Seafood",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/seafood.png",
            "strCategoryDescription":
                "Seafood is any form of sea life regarded as food by humans. Seafood prominently includes fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms. Historically, sea mammals such as whales and dolphins have been consumed as food, though that happens to a lesser extent in modern times. Edible sea plants, such as some seaweeds and microalgae, are widely eaten as seafood around the world, especially in Asia (see the category of sea vegetables). In North America, although not generally in the United Kingdom, the term \"seafood\" is extended to fresh water organisms eaten by humans, so all edible aquatic life may be referred to as seafood. For the sake of completeness, this article includes all edible aquatic life."
          },
          {
            "idCategory": "9",
            "strCategory": "Side",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/side.png",
            "strCategoryDescription":
                "A side dish, sometimes referred to as a side order, side item, or simply a side, is a food item that accompanies the entrée or main course at a meal. Side dishes such as salad, potatoes and bread are commonly used with main courses throughout many countries of the western world. New side orders introduced within the past decade[citation needed], such as rice and couscous, have grown to be quite popular throughout Europe, especially at formal occasions (with couscous appearing more commonly at dinner parties with Middle Eastern dishes)."
          },
          {
            "idCategory": "10",
            "strCategory": "Starter",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/starter.png",
            "strCategoryDescription":
                "An entrée in modern French table service and that of much of the English-speaking world (apart from the United States and parts of Canada) is a dish served before the main course of a meal; it may be the first dish served, or it may follow a soup or other small dish or dishes. In the United States and parts of Canada, an entrée is the main dish or the only dish of a meal.\r\n\r\nHistorically, the entrée was one of the stages of the “Classical Order” of formal French table service of the 18th and 19th centuries. It formed a part of the “first service” of the meal, which consisted of potage, hors d’œuvre, and entrée (including the bouilli and relevé). The “second service” consisted of roast (rôti), salad, and entremets (the entremets sometimes being separated into a “third service” of their own). The final service consisted only of dessert.[3]:3–11 :13–25"
          },
          {
            "idCategory": "11",
            "strCategory": "Vegan",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/vegan.png",
            "strCategoryDescription":
                "Veganism is both the practice of abstaining from the use of animal products, particularly in diet, and an associated philosophy that rejects the commodity status of animals.[b] A follower of either the diet or the philosophy is known as a vegan (pronounced /ˈviːɡən/ VEE-gən). Distinctions are sometimes made between several categories of veganism. Dietary vegans (or strict vegetarians) refrain from consuming animal products, not only meat but also eggs, dairy products and other animal-derived substances.[c] The term ethical vegan is often applied to those who not only follow a vegan diet but extend the philosophy into other areas of their lives, and oppose the use of animals for any purpose.[d] Another term is environmental veganism, which refers to the avoidance of animal products on the premise that the harvesting or industrial farming of animals is environmentally damaging and unsustainable."
          },
          {
            "idCategory": "12",
            "strCategory": "Vegetarian",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/vegetarian.png",
            "strCategoryDescription":
                "Vegetarianism is the practice of abstaining from the consumption of meat (red meat, poultry, seafood, and the flesh of any other animal), and may also include abstention from by-products of animal slaughter.\r\n\r\nVegetarianism may be adopted for various reasons. Many people object to eating meat out of respect for sentient life. Such ethical motivations have been codified under various religious beliefs, as well as animal rights advocacy. Other motivations for vegetarianism are health-related, political, environmental, cultural, aesthetic, economic, or personal preference. There are variations of the diet as well: an ovo-lacto vegetarian diet includes both eggs and dairy products, an ovo-vegetarian diet includes eggs but not dairy products, and a lacto-vegetarian diet includes dairy products but not eggs. A vegan diet excludes all animal products, including eggs and dairy. Some vegans also avoid other animal products such as beeswax, leather or silk clothing, and goose-fat shoe polish."
          },
          {
            "idCategory": "13",
            "strCategory": "Breakfast",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/breakfast.png",
            "strCategoryDescription":
                "Breakfast is the first meal of a day. The word in English refers to breaking the fasting period of the previous night. There is a strong likelihood for one or more \"typical\", or \"traditional\", breakfast menus to exist in most places, but their composition varies widely from place to place, and has varied over time, so that globally a very wide range of preparations and ingredients are now associated with breakfast."
          },
          {
            "idCategory": "14",
            "strCategory": "Goat",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/goat.png",
            "strCategoryDescription":
                "The domestic goat or simply goat (Capra aegagrus hircus) is a subspecies of C. aegagrus domesticated from the wild goat of Southwest Asia and Eastern Europe. The goat is a member of the animal family Bovidae and the subfamily Caprinae, meaning it is closely related to the sheep. There are over 300 distinct breeds of goat. Goats are one of the oldest domesticated species of animal, and have been used for milk, meat, fur and skins across much of the world. Milk from goats is often turned into goat cheese."
          }
        ]
      };
      CategoriesDetailsModel model = CategoriesDetailsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global.getCategoriesDetails();

      CategoriesDetailsModel model2 = CategoriesDetailsModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global DetailsMealsByFirstLetter ', () async {
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global
          .getDetailsMealsByFirstLetter(SearchByFirstLetterParams("f"));

      DetailsMealsModel model2 = DetailsMealsModel.fromJson(data);
      expect(model2 is DetailsMealsModel, true);
    });
    test('Testing  global DetailsMealsById ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "idMeal": "52772",
            "strMeal": "Teriyaki Chicken Casserole",
            "strDrinkAlternate": null,
            "strCategory": "Chicken",
            "strArea": "Japanese",
            "strInstructions":
                "Preheat oven to 350° F. Spray a 9x13-inch baking pan with non-stick spray.\r\nCombine soy sauce, ½ cup water, brown sugar, ginger and garlic in a small saucepan and cover. Bring to a boil over medium heat. Remove lid and cook for one minute once boiling.\r\nMeanwhile, stir together the corn starch and 2 tablespoons of water in a separate dish until smooth. Once sauce is boiling, add mixture to the saucepan and stir to combine. Cook until the sauce starts to thicken then remove from heat.\r\nPlace the chicken breasts in the prepared pan. Pour one cup of the sauce over top of chicken. Place chicken in oven and bake 35 minutes or until cooked through. Remove from oven and shred chicken in the dish using two forks.\r\n*Meanwhile, steam or cook the vegetables according to package directions.\r\nAdd the cooked vegetables and rice to the casserole dish with the chicken. Add most of the remaining sauce, reserving a bit to drizzle over the top when serving. Gently toss everything together in the casserole dish until combined. Return to oven and cook 15 minutes. Remove from oven and let stand 5 minutes before serving. Drizzle each serving with remaining sauce. Enjoy!",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg",
            "strTags": "Meat,Casserole",
            "strYoutube": "https://www.youtube.com/watch?v=4aZr5hZXP_s",
            "strIngredient1": "soy sauce",
            "strIngredient2": "water",
            "strIngredient3": "brown sugar",
            "strIngredient4": "ground ginger",
            "strIngredient5": "minced garlic",
            "strIngredient6": "cornstarch",
            "strIngredient7": "chicken breasts",
            "strIngredient8": "stir-fry vegetables",
            "strIngredient9": "brown rice",
            "strIngredient10": "",
            "strIngredient11": "",
            "strIngredient12": "",
            "strIngredient13": "",
            "strIngredient14": "",
            "strIngredient15": "",
            "strIngredient16": null,
            "strIngredient17": null,
            "strIngredient18": null,
            "strIngredient19": null,
            "strIngredient20": null,
            "strMeasure1": "3/4 cup",
            "strMeasure2": "1/2 cup",
            "strMeasure3": "1/4 cup",
            "strMeasure4": "1/2 teaspoon",
            "strMeasure5": "1/2 teaspoon",
            "strMeasure6": "4 Tablespoons",
            "strMeasure7": "2",
            "strMeasure8": "1 (12 oz.)",
            "strMeasure9": "3 cups",
            "strMeasure10": "",
            "strMeasure11": "",
            "strMeasure12": "",
            "strMeasure13": "",
            "strMeasure14": "",
            "strMeasure15": "",
            "strMeasure16": null,
            "strMeasure17": null,
            "strMeasure18": null,
            "strMeasure19": null,
            "strMeasure20": null,
            "strSource": null,
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
          }
        ]
      };
      DetailsMealsModel model = DetailsMealsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getDetailsMealsById(SearchMealByIdParams("52772"));

      DetailsMealsModel model2 = DetailsMealsModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global DetailsMealsBySearchMeal ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "idMeal": "53014",
            "strMeal": "Pizza Express Margherita",
            "strDrinkAlternate": null,
            "strCategory": "Miscellaneous",
            "strArea": "Italian",
            "strInstructions":
                "1 Preheat the oven to 230°C.\r\n\r\n2 Add the sugar and crumble the fresh yeast into warm water.\r\n\r\n3 Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.\r\n\r\n4 Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.\r\n\r\n5 Lightly flour your hands, and slowly mix the ingredients together until they bind.\r\n\r\n6 Generously dust your surface with flour.\r\n\r\n7 Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.\r\n\r\n8 Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!)\r\n\r\n9 Spread the passata on top making sure you go to the edge.\r\n\r\n10 Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.\r\n\r\n11 Cook in the oven for 10 – 12 minutes until the cheese slightly colours.\r\n\r\n12 When ready, place the basil leaf on top and tuck in!",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/x0lk931587671540.jpg",
            "strTags": null,
            "strYoutube": "https://www.youtube.com/watch?v=Mt5lgUZRoUg",
            "strIngredient1": "Water",
            "strIngredient2": "Sugar",
            "strIngredient3": "Yeast",
            "strIngredient4": "Plain Flour",
            "strIngredient5": "Salt",
            "strIngredient6": "Olive Oil",
            "strIngredient7": "Passata",
            "strIngredient8": "Mozzarella",
            "strIngredient9": "Oregano",
            "strIngredient10": "Basil",
            "strIngredient11": "Black Pepper",
            "strIngredient12": "",
            "strIngredient13": "",
            "strIngredient14": "",
            "strIngredient15": "",
            "strIngredient16": "",
            "strIngredient17": "",
            "strIngredient18": "",
            "strIngredient19": "",
            "strIngredient20": "",
            "strMeasure1": "150ml",
            "strMeasure2": "1 tsp ",
            "strMeasure3": "15g",
            "strMeasure4": "225g",
            "strMeasure5": "1 1/2 tsp ",
            "strMeasure6": "Drizzle",
            "strMeasure7": "80g",
            "strMeasure8": "70g",
            "strMeasure9": "Peeled and Sliced",
            "strMeasure10": "Leaves",
            "strMeasure11": "Pinch",
            "strMeasure12": " ",
            "strMeasure13": " ",
            "strMeasure14": " ",
            "strMeasure15": " ",
            "strMeasure16": " ",
            "strMeasure17": " ",
            "strMeasure18": " ",
            "strMeasure19": " ",
            "strMeasure20": " ",
            "strSource":
                "https://www.dailymail.co.uk/femail/food/article-8240361/Pizza-Express-release-secret-recipe-Margherita-Pizza-make-home.html",
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
          }
        ]
      };
      DetailsMealsModel model = DetailsMealsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getDetailsMealsBySearchMeal(SearchMealParams("Pizza"));

      DetailsMealsModel model2 = DetailsMealsModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global MealIngredients ', () async {
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getMealIngredients(IngredientParams("list"));

      MealIngredientsModel model2 = MealIngredientsModel.fromJson(data);
      expect(model2 is MealIngredientsModel, true);
    });
    test('Testing  global MealsArea ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {"strArea": "American"},
          {"strArea": "British"},
          {"strArea": "Canadian"},
          {"strArea": "Chinese"},
          {"strArea": "Croatian"},
          {"strArea": "Dutch"},
          {"strArea": "Egyptian"},
          {"strArea": "Filipino"},
          {"strArea": "French"},
          {"strArea": "Greek"},
          {"strArea": "Indian"},
          {"strArea": "Irish"},
          {"strArea": "Italian"},
          {"strArea": "Jamaican"},
          {"strArea": "Japanese"},
          {"strArea": "Kenyan"},
          {"strArea": "Malaysian"},
          {"strArea": "Mexican"},
          {"strArea": "Moroccan"},
          {"strArea": "Polish"},
          {"strArea": "Portuguese"},
          {"strArea": "Russian"},
          {"strArea": "Spanish"},
          {"strArea": "Thai"},
          {"strArea": "Tunisian"},
          {"strArea": "Turkish"},
          {"strArea": "Unknown"},
          {"strArea": "Vietnamese"}
        ]
      };
      MealAreasModel model = MealAreasModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global.getMealsArea(AreaParams("list"));

      MealAreasModel model2 = MealAreasModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global RandomSearch ', () async {
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global.getRandomSearch();

      DetailsMealsModel model2 = DetailsMealsModel.fromJson(data);
      expect(model2 is DetailsMealsModel, true);
    });
    test('Testing  global SearchCategories ', () async {
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getSearchCategories(CategoryParams(""));

      SearchMealsModel model2 = SearchMealsModel.fromJson(data);
      expect(model2 is SearchMealsModel, true);
    });
    test('Testing  global SearchMealsByArea ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "strMeal": "BeaverTails",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg",
            "idMeal": "52928"
          },
          {
            "strMeal": "Breakfast Potatoes",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/1550441882.jpg",
            "idMeal": "52965"
          },
          {
            "strMeal": "Canadian Butter Tarts",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg",
            "idMeal": "52923"
          },
          {
            "strMeal": "Montreal Smoked Meat",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/uttupv1511815050.jpg",
            "idMeal": "52927"
          },
          {
            "strMeal": "Nanaimo Bars",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/vwuprt1511813703.jpg",
            "idMeal": "52924"
          },
          {
            "strMeal": "Pate Chinois",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/yyrrxr1511816289.jpg",
            "idMeal": "52930"
          },
          {
            "strMeal": "Pouding chomeur",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/yqqqwu1511816912.jpg",
            "idMeal": "52932"
          },
          {
            "strMeal": "Poutine",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/uuyrrx1487327597.jpg",
            "idMeal": "52804"
          },
          {
            "strMeal": "Rappie Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/ruwpww1511817242.jpg",
            "idMeal": "52933"
          },
          {
            "strMeal": "Split Pea Soup",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/xxtsvx1511814083.jpg",
            "idMeal": "52925"
          },
          {
            "strMeal": "Sugar Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/yrstur1511816601.jpg",
            "idMeal": "52931"
          },
          {
            "strMeal": "Timbits",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg",
            "idMeal": "52929"
          },
          {
            "strMeal": "Tourtiere",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/ytpstt1511814614.jpg",
            "idMeal": "52926"
          }
        ]
      };
      SearchMealsModel model = SearchMealsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getSearchMealsByArea(AreaParams("Canadian"));

      SearchMealsModel model2 = SearchMealsModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global SearchMealsByCategory ', () async {
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getSearchMealsByCategory(CategoryParams("Dessert"));

      SearchMealsModel model2 = SearchMealsModel.fromJson(data);
      expect(model2 is SearchMealsModel, true);
    });
    test('Testing  global SearchMeals ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "strMeal": "Chick-Fil-A Sandwich",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg",
            "idMeal": "53016"
          },
          {
            "strMeal": "Chicken Couscous",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg",
            "idMeal": "52850"
          },
          {
            "strMeal": "Chicken Fajita Mac and Cheese",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/qrqywr1503066605.jpg",
            "idMeal": "52818"
          },
          {
            "strMeal": "Chicken Ham and Leek Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/xrrtss1511555269.jpg",
            "idMeal": "52875"
          },
          {
            "strMeal": "Chicken Quinoa Greek Salad",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/k29viq1585565980.jpg",
            "idMeal": "53011"
          },
          {
            "strMeal": "General Tso's Chicken",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/1529444113.jpg",
            "idMeal": "52951"
          },
          {
            "strMeal": "Honey Balsamic Chicken with Crispy Broccoli & Potatoes",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/kvbotn1581012881.jpg",
            "idMeal": "52993"
          },
          {
            "strMeal": "Katsu Chicken curry",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/vwrpps1503068729.jpg",
            "idMeal": "52820"
          },
          {
            "strMeal": "Rappie Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/ruwpww1511817242.jpg",
            "idMeal": "52933"
          }
        ]
      };
      SearchMealsModel model = SearchMealsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data = await global
          .getSearchMealsByIngredient(IngredientParams("chicken_breast"));

      SearchMealsModel model2 = SearchMealsModel.fromJson(data);
      expect(model == model2, true);
    });
    test('Testing  global SearchMealsByName ', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "strMeal": "Chick-Fil-A Sandwich",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg",
            "idMeal": "53016"
          },
          {
            "strMeal": "Chicken Couscous",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg",
            "idMeal": "52850"
          },
          {
            "strMeal": "Chicken Fajita Mac and Cheese",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/qrqywr1503066605.jpg",
            "idMeal": "52818"
          },
          {
            "strMeal": "Chicken Ham and Leek Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/xrrtss1511555269.jpg",
            "idMeal": "52875"
          },
          {
            "strMeal": "Chicken Quinoa Greek Salad",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/k29viq1585565980.jpg",
            "idMeal": "53011"
          },
          {
            "strMeal": "General Tso's Chicken",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/1529444113.jpg",
            "idMeal": "52951"
          },
          {
            "strMeal": "Honey Balsamic Chicken with Crispy Broccoli & Potatoes",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/kvbotn1581012881.jpg",
            "idMeal": "52993"
          },
          {
            "strMeal": "Katsu Chicken curry",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/vwrpps1503068729.jpg",
            "idMeal": "52820"
          },
          {
            "strMeal": "Rappie Pie",
            "strMealThumb":
                "https://www.themealdb.com/images/media/meals/ruwpww1511817242.jpg",
            "idMeal": "52933"
          }
        ]
      };
      SearchMealsModel searchMealsModel = SearchMealsModel.fromJson(json);
      GlobalOperationsImp global = GlobalOperationsImp();
      Map<String, dynamic> data =
          await global.getSearchMealsByIngredient(IngredientParams("chicken"));

      SearchMealsModel model2 = SearchMealsModel.fromJson(data);
      //print(model2.toJson());
      expect(model2.searchMeals.isNotEmpty, true);
    });
  });
}

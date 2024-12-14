import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themealdb/features/data/data-sourses/local_data_sources/local_operations_imp.dart';
import 'package:themealdb/features/data/models/categories_details_model.dart';
import 'package:themealdb/features/data/models/details_meals_model.dart';
import 'package:themealdb/features/data/models/meal_areas_model.dart';
import 'package:themealdb/features/data/models/meal_ingredients_model.dart';
import 'package:themealdb/features/data/models/search_categories_model.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

void main() {
  group("testing local dataSources", () {
    test('Testing store and restore ListAreas', () async {
      //TestWidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      Map<String, dynamic> json = {
        "meals": [
          {"strArea": "American"},
          {"strArea": "British"},
        ]
      };
      MealAreasModel model = MealAreasModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeListAreas(AreaParams("list"), model);
      MealAreasModel restoreModel = await localOperationsImp
          .restoreListAreas(AreaParams("list")) as MealAreasModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore ListCategories', () async {
      Map<String, dynamic> json = {
        "meals": [
          {"strCategory": "Beef"},
          {"strCategory": "Breakfast"},
        ]
      };
      SearchCategoriesModel model = SearchCategoriesModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeListCategories(
          CategoryParams("list"), model);
      SearchCategoriesModel? restoreModel =
          await localOperationsImp.restoreListCategories(CategoryParams("list"))
              as SearchCategoriesModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore ListIngredients', () async {
      Map<String, dynamic> json = {
        "meals": [
          {
            "idIngredient": "1",
            "strIngredient": "Chicken",
            "strDescription":
                "The chicken is a type of domesticated fowl, a subspecies of the red junglefowl (Gallus gallus). It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011. There are more chickens in the world than any other bird or domesticated fowl. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) and, less commonly, as pets. Originally raised for cockfighting or for special ceremonies, chickens were not kept for food until the Hellenistic period (4th–2nd centuries BC).\r\n\r\nGenetic studies have pointed to multiple maternal origins in South Asia, Southeast Asia, and East Asia, but with the clade found in the Americas, Europe, the Middle East and Africa originating in the Indian subcontinent. From ancient India, the domesticated chicken spread to Lydia in western Asia Minor, and to Greece by the 5th century BC. Fowl had been known in Egypt since the mid-15th century BC, with the \"bird that gives birth every day\" having come to Egypt from the land between Syria and Shinar, Babylonia, according to the annals of Thutmose III.",
            "strType": null
          },
        ]
      };
      MealIngredientsModel model = MealIngredientsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeListIngredients(
          IngredientParams("list"), model);
      MealIngredientsModel? restoreModel = await localOperationsImp
              .restoreListIngredients(IngredientParams("list"))
          as MealIngredientsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchByIngredients', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "strMeal": "Chick-Fil-A Sandwich",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg",
            "idMeal": "53016"
          },
          {
            "strMeal": "Chicken Couscous",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg",
            "idMeal": "52850"
          },
        ]
      };
      SearchMealsModel model = SearchMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchByIngredients(
          IngredientParams("list"), model);
      SearchMealsModel? restoreModel = await localOperationsImp
              .restoreSearchByIngredients(IngredientParams("list"))
          as SearchMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchByCategories', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "strMeal": "Chick-Fil-A Sandwich",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg",
            "idMeal": "53016"
          },
          {
            "strMeal": "Chicken Couscous",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg",
            "idMeal": "52850"
          },
        ]
      };
      SearchMealsModel model = SearchMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchByCategories(
          CategoryParams("list"), model);
      SearchMealsModel? restoreModel = await localOperationsImp
          .restoreSearchByCategories(CategoryParams("list"))
      as SearchMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchByArea', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "strMeal": "Chick-Fil-A Sandwich",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg",
            "idMeal": "53016"
          },
          {
            "strMeal": "Chicken Couscous",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg",
            "idMeal": "52850"
          },
        ]
      };
      SearchMealsModel model = SearchMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchByArea(
          AreaParams("list"), model);
      SearchMealsModel? restoreModel = await localOperationsImp
          .restoreSearchByArea(AreaParams("list"))
      as SearchMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchMeal', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "idMeal": "53014",
            "strMeal": "Pizza Express Margherita",
            "strDrinkAlternate": null,
            "strCategory": "Miscellaneous",
            "strArea": "Italian",
            "strInstructions": "1 Preheat the oven to 230°C.\r\n\r\n2 Add the sugar and crumble the fresh yeast into warm water.\r\n\r\n3 Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.\r\n\r\n4 Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.\r\n\r\n5 Lightly flour your hands, and slowly mix the ingredients together until they bind.\r\n\r\n6 Generously dust your surface with flour.\r\n\r\n7 Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.\r\n\r\n8 Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!)\r\n\r\n9 Spread the passata on top making sure you go to the edge.\r\n\r\n10 Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.\r\n\r\n11 Cook in the oven for 10 – 12 minutes until the cheese slightly colours.\r\n\r\n12 When ready, place the basil leaf on top and tuck in!",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/x0lk931587671540.jpg",
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
            "strSource": "https://www.dailymail.co.uk/femail/food/article-8240361/Pizza-Express-release-secret-recipe-Margherita-Pizza-make-home.html",
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
          }
        ]
      };
      DetailsMealsModel model = DetailsMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchMeal(
          SearchMealParams("list"), model);
      DetailsMealsModel? restoreModel = await localOperationsImp
          .restoreSearchMeal(SearchMealParams("list"))
      as DetailsMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchByFirstLetter', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "idMeal": "53014",
            "strMeal": "Pizza Express Margherita",
            "strDrinkAlternate": null,
            "strCategory": "Miscellaneous",
            "strArea": "Italian",
            "strInstructions": "1 Preheat the oven to 230°C.\r\n\r\n2 Add the sugar and crumble the fresh yeast into warm water.\r\n\r\n3 Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.\r\n\r\n4 Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.\r\n\r\n5 Lightly flour your hands, and slowly mix the ingredients together until they bind.\r\n\r\n6 Generously dust your surface with flour.\r\n\r\n7 Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.\r\n\r\n8 Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!)\r\n\r\n9 Spread the passata on top making sure you go to the edge.\r\n\r\n10 Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.\r\n\r\n11 Cook in the oven for 10 – 12 minutes until the cheese slightly colours.\r\n\r\n12 When ready, place the basil leaf on top and tuck in!",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/x0lk931587671540.jpg",
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
            "strSource": "https://www.dailymail.co.uk/femail/food/article-8240361/Pizza-Express-release-secret-recipe-Margherita-Pizza-make-home.html",
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
          }
        ]
      };
      DetailsMealsModel model = DetailsMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchByFirstLetter(
          SearchByFirstLetterParams("list"), model);
      DetailsMealsModel? restoreModel = await localOperationsImp
          .restoreSearchByFirstLetter(SearchByFirstLetterParams("list"))
      as DetailsMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore SearchMealById', () async {
      Map<String, dynamic> json ={
        "meals": [
          {
            "idMeal": "53014",
            "strMeal": "Pizza Express Margherita",
            "strDrinkAlternate": null,
            "strCategory": "Miscellaneous",
            "strArea": "Italian",
            "strInstructions": "1 Preheat the oven to 230°C.\r\n\r\n2 Add the sugar and crumble the fresh yeast into warm water.\r\n\r\n3 Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.\r\n\r\n4 Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.\r\n\r\n5 Lightly flour your hands, and slowly mix the ingredients together until they bind.\r\n\r\n6 Generously dust your surface with flour.\r\n\r\n7 Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.\r\n\r\n8 Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!)\r\n\r\n9 Spread the passata on top making sure you go to the edge.\r\n\r\n10 Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.\r\n\r\n11 Cook in the oven for 10 – 12 minutes until the cheese slightly colours.\r\n\r\n12 When ready, place the basil leaf on top and tuck in!",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/x0lk931587671540.jpg",
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
            "strSource": "https://www.dailymail.co.uk/femail/food/article-8240361/Pizza-Express-release-secret-recipe-Margherita-Pizza-make-home.html",
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
          }
        ]
      };
      DetailsMealsModel model = DetailsMealsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeSearchMealById(
          SearchMealByIdParams("list"), model);
      DetailsMealsModel? restoreModel = await localOperationsImp
          .restoreSearchMealById(SearchMealByIdParams("list"))
      as DetailsMealsModel;
      expect(model == restoreModel, true);
    });
    test('Testing store and restore ListCategoriesDetails', () async {
      Map<String, dynamic> json ={
        "categories": [
          {
            "idCategory": "1",
            "strCategory": "Beef",
            "strCategoryThumb": "https://www.themealdb.com/images/category/beef.png",
            "strCategoryDescription": "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
          },
          {
            "idCategory": "2",
            "strCategory": "Chicken",
            "strCategoryThumb": "https://www.themealdb.com/images/category/chicken.png",
            "strCategoryDescription": "Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets."
          },
        ]
      };
      CategoriesDetailsModel model = CategoriesDetailsModel.fromJson(json);
      LocalOperationsImp localOperationsImp = LocalOperationsImp();
      await localOperationsImp.storeListCategoriesDetails(
         model);
      CategoriesDetailsModel? restoreModel = await localOperationsImp
          .restoreListCategoriesDetails()
      as CategoriesDetailsModel;
      expect(model == restoreModel, true);
    });
  });
}

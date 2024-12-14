// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_cast, unnecessary_null_comparison, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/models_state.dart';
import '../../core/Project_widgets/platform.dart';
import '../../features/data/models/search_meals_model.dart';

import 'package:provider/provider.dart';
import '../../features/domain/entites/search_meal.dart';
import '../../features/domain/entites/search_meals.dart';
import '../blocs/search_by_ingredients_bloc/search_by_ingredient_cubit.dart';
import '../widgets/categories_show_widget.dart';

class IngredientsShowView extends StatelessWidget {
  const IngredientsShowView();

  @override
  Widget build(BuildContext context) {
    SearchBYIngredientCubit cubit = SearchBYIngredientCubit();

    final _controller = ScrollController();

    return BlocBuilder<SearchBYIngredientCubit, ModelsState>(
        builder: (cx, ModelsState state) {
      var bloc = Provider.of<SearchBYIngredientCubit>(context, listen: false);

      if (state is ModelInitialState) {
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            const Center(
              child: Text("List is not available yet"),
            ),
          ],
        );
      } else if (state is ModelsLoadingState) {
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            const CircularProgressIndicator(),
          ],
        );
      } else if (state is ModelsErrorState) {
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            Center(
              child: Text(state.error),
            ),
          ],
        );
      } else if (state is ModelsDataState) {
        SearchMeals model = state.data;
        List<SearchMeal> detailsMeal =
            ((state as ModelsDataState).data as SearchMealsModel).searchMeals;
        List<Widget> widgets = [];
        for (int i = 0; i < detailsMeal.length; i++) {
          widgets.add(CategoriesShowWidget(
            idMeal: detailsMeal[i].idMeal,
            strMeal: detailsMeal[i].strMeal,
            strMealThumb: detailsMeal[i].strMealThumb,
          ));
        }

        return BlocProvider(
          create: (cx) => cubit,
          child: (widgets == null)
              ? Container(
                  child: const Center(
                    child: Text("no data found"),
                  ),
                )
              : Expanded(
                  child: GridView.count(
                    crossAxisCount: !(Platform.isMobile(context)) ? 2 : 1,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    childAspectRatio: ((Platform.isMobile(context))
                            ? 180
                            : (Platform.getWidth(context)) / 2 - 40) /
                        ((Platform.isMobile(context))
                            ? 180
                            : (Platform.isTablet(context))
                                ? 460
                                : 500),
                    children: widgets,
                  ),
                ),
        );
      }
      return Container(
        width: 1,
        height: 1,
      );
    });
  }
}

// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_cast, unnecessary_null_comparison, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/data/models/details_meals_model.dart';
import '../../core/Project_widgets/platform.dart';
import '../../features/domain/entites/details_meal.dart';
import '../../features/domain/entites/details_meals.dart';
import 'package:provider/provider.dart';
import '../blocs/home_bloc/search_meal_cubit.dart';
import '../blocs/home_states.dart';
import '../widgets/search_meal_widget.dart';

class SearchMealsView extends StatelessWidget {
  const SearchMealsView();

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = HomeCubit();
    cubit.getRandomSearch();
    final _controller = ScrollController();

    return BlocBuilder<HomeCubit, HomeState>(builder: (cx, HomeState state) {
      var bloc = Provider.of<HomeCubit>(context, listen: false);

      if (state is HomeLoadingRandomModelState) {
        bloc.getRandomSearch();
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            const CircularProgressIndicator(),
          ],
        );
      } else if (state is HomeErrorRandomModelState) {
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            Center(
              child: Text(state.randomError),
            ),
          ],
        );
      } else if (state is HomeDataRandomModelState) {
        DetailsMeals model = state.randomData;
        List<DetailsMeal> detailsMeal = ((state as HomeDataRandomModelState)
                .randomData as DetailsMealsModel)
            .detailsMeals;
        List<Widget> widgets = [];
        for (int i = 0; i < detailsMeal.length; i++) {
          widgets.add(SearchMealsWidget(
            strMeal: detailsMeal[i].strMeal,
            idMeal: detailsMeal[i].idMeal,
            strArea: detailsMeal[i].strArea,
            strCategory: detailsMeal[i].strCategory,
            strMealThumb: detailsMeal[i].strMealThumb,
            strSource: detailsMeal[i].strSource,
            strYoutube: detailsMeal[i].strYoutube,
          ));
        }
        return BlocProvider(
          create: (cx) => cubit,
          child: (widgets == null)
              ? Container()
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
      } else if (state is HomeLoadingState) {
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            const CircularProgressIndicator(),
          ],
        );
      } else if (state is HomeErrorState) {
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
      } else if (state is HomeDataState) {
        DetailsMeals model = state.data;
        List<DetailsMeal> detailsMeal =
            ((state as HomeDataState).data as DetailsMealsModel).detailsMeals;
        List<Widget> widgets = [];
        for (int i = 0; i < detailsMeal.length; i++) {
          widgets.add(SearchMealsWidget(
            idMeal: detailsMeal[i].idMeal,
            strMeal: detailsMeal[i].strMeal,
            strArea: detailsMeal[i].strArea,
            strCategory: detailsMeal[i].strCategory,
            strMealThumb: detailsMeal[i].strMealThumb,
            strSource: detailsMeal[i].strSource,
            strYoutube: detailsMeal[i].strYoutube,
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

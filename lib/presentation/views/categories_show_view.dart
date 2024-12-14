// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_cast

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import 'package:themealdb/presentation/blocs/categories_bloc/categories_cubit.dart';
import 'package:themealdb/presentation/widgets/categories_show_widget.dart';
import '../../core/Project_widgets/platform.dart';
import 'package:provider/provider.dart';
import '../../features/domain/entites/search_meal.dart';
import '../../features/domain/entites/search_meals.dart';
import '../blocs/models_state.dart';
import '../blocs/search_by_categorey_bloc/search_by_category_cubit.dart';

class CategoriesShowView extends StatefulWidget {
  final String strCategory;

  const CategoriesShowView(this.strCategory);

  @override
  State<CategoriesShowView> createState() => _CategoriesShowViewState();
}

class _CategoriesShowViewState extends State<CategoriesShowView> {
  @override
  Widget build(BuildContext context) {
    SearchBYCategoryCubit cubit = SearchBYCategoryCubit();
    final _controller = ScrollController();

    return BlocBuilder<SearchBYCategoryCubit, ModelsState>(
        builder: (cx, ModelsState state) {
      var bloc = Provider.of<SearchBYCategoryCubit>(context, listen: false);
      Provider.of<CategoriesCubit>(context, listen: false);

      if (state is ModelsLoadingState) {
        bloc.getMealsByCategory(CategoryParams(widget.strCategory));

        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
            const Center(child: CircularProgressIndicator()),
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
          child: Column(
            children: [
              AppBar(
                leading: BackButton(
                  onPressed: () async {
                    await bloc.getMealsByCategoriesLoadingState();
                    Navigator.pop(context, () {
                      setState(() {});
                    });
                  },
                ),
                title: Text(widget.strCategory),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
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
            ],
          ),
        );
      }
      return Container();
    });
  }
}

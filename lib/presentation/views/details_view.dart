import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import 'package:themealdb/presentation/blocs/details_bloc/details_bloc.dart';
import 'package:provider/provider.dart';
import '../../core/Project_widgets/platform.dart';
import '../blocs/models_state.dart';
import '../widgets/details_widget.dart';

class DetailsView extends StatelessWidget {

  final String idMeal;

  const DetailsView(this.idMeal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailsCubit = Provider.of<DetailsCubit>(context, listen: false);
    detailsCubit.getMealsDetailsById(SearchMealByIdParams(idMeal));


    return Scaffold(
      body:
      BlocBuilder<DetailsCubit, ModelsState>(builder: (cx, ModelsState state) {
        if (state is ModelsLoadingState) {
          return Column(
            children:  [SizedBox(
              height: (Platform.getHeight(context) / 2),
            ),
              const Center(child: CircularProgressIndicator()),
            ],
          );
        } else if (state is ModelsErrorState) {
          return Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [SizedBox(
              height: (Platform.getHeight(context) / 3),
            ),
              Center(
                child: Text(state.error),
              ),
            ],
          );
        } else if (state is ModelsDataState) {
          DetailsMeals model = state.data;

          return MealDetailWidget(
            strMeal: model.detailsMeals[0].strMeal,
            strIngredient1: model.detailsMeals[0].strIngredient1,
            strIngredient2: model.detailsMeals[0].strIngredient2,
            strIngredient3
            :model.detailsMeals[0].strIngredient3,
            strIngredient4
            :model.detailsMeals[0].strIngredient4,
            strIngredient5
            :model.detailsMeals[0].strIngredient5,
            strIngredient6
            :model.detailsMeals[0].strIngredient6,
            strIngredient7
            :model.detailsMeals[0].strIngredient7,
            strIngredient8
            :model.detailsMeals[0].strIngredient8,
            strIngredient9
            :model.detailsMeals[0].strIngredient9,
            strIngredient10
            :model.detailsMeals[0].strIngredient10,
            strIngredient11
            :model.detailsMeals[0].strIngredient11,
            strIngredient12
            :model.detailsMeals[0].strIngredient12,
            strIngredient13
            :model.detailsMeals[0].strIngredient13,
            strIngredient14
            :model.detailsMeals[0].strIngredient14,
            strIngredient15
            :model.detailsMeals[0].strIngredient15,
            strInstructions
            :model.detailsMeals[0].strInstructions,
            strMeasure1
            :model.detailsMeals[0].strMeasure1,
            strIngredient16
            :model.detailsMeals[0].strIngredient16,
            strIngredient17
            :model.detailsMeals[0].strIngredient17,
            strIngredient18
            :model.detailsMeals[0].strIngredient18,
            strIngredient19
            :model.detailsMeals[0].strIngredient19,
            strIngredient20
            :model.detailsMeals[0].strIngredient20,
            strMeasure2
            :model.detailsMeals[0].strMeasure2,
            strMeasure3
            :model.detailsMeals[0].strMeasure3,
            strMeasure4
            :model.detailsMeals[0].strMeasure4,
            strMeasure5
            :model.detailsMeals[0].strMeasure5,
            strMeasure6
            :model.detailsMeals[0].strMeasure6,
            strMeasure7
            :model.detailsMeals[0].strMeasure7,
            strMeasure8
            :model.detailsMeals[0].strMeasure8,
            strMeasure9:
            model.detailsMeals[0].strMeasure9,
            strMeasure10
            :model.detailsMeals[0].strMeasure10,
            strMeasure11
            :model.detailsMeals[0].strMeasure11,
            strMeasure12
            :model.detailsMeals[0].strMeasure12,
            strMeasure13
            :model.detailsMeals[0].strMeasure13,
            strMeasure14
            :model.detailsMeals[0].strMeasure14,
            strMeasure15
            :model.detailsMeals[0].strMeasure15,
            strMeasure16
            :model.detailsMeals[0].strMeasure16,
            strMeasure17
            :model.detailsMeals[0].strMeasure17,
            strMeasure18
            :model.detailsMeals[0].strMeasure18,
            strMeasure19
            :model.detailsMeals[0].strMeasure19,
            strMeasure20
            :model.detailsMeals[0].strMeasure20,
            strMealThumb: model.detailsMeals[0].strMealThumb,);
        }
        return Container(); }),
    );

  }
}

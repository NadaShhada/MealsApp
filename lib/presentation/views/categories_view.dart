// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_cast

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/data/models/categories_details_model.dart';
import 'package:themealdb/presentation/blocs/search_by_categorey_bloc/search_by_category_cubit.dart';
import 'package:themealdb/presentation/widgets/categories_widget.dart';
import '../../core/Project_widgets/platform.dart';
import '../../features/domain/entites/categories_details.dart';
import '../../features/domain/entites/category_details.dart';
import 'package:provider/provider.dart';
import '../blocs/categories_bloc/categories_cubit.dart';
import '../blocs/models_state.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView();

  @override
  Widget build(BuildContext context) {
    CategoriesCubit cubit = CategoriesCubit();
    cubit.getCategoriesDetails();
    final _controller = ScrollController();

    return BlocBuilder<CategoriesCubit, ModelsState>(
        builder: (cx, ModelsState state) {
      var bloc = Provider.of<CategoriesCubit>(context, listen: false);
      Provider.of<SearchBYCategoryCubit>(context, listen: false);

      if (state is ModelsLoadingState) {
        bloc.getCategoriesDetails();
        return Column(
          children: [
            SizedBox(
              height: (Platform.getHeight(context) / 4),
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
            Text(state.error),
          ],
        );
      } else if (state is ModelsDataState) {
        CategoriesDetails model = state.data;
        List<CategoryDetails> categoriesDetails =
            ((state as ModelsDataState).data as CategoriesDetailsModel)
                .categoriesDetails;
        List<Widget> widgets = [];
        for (int i = 0; i < categoriesDetails.length; i++) {
          widgets.add(CategoriesWidget(
            categoryName: categoriesDetails[i].strCategory,
            categoryUrl: categoriesDetails[i].strCategoryThumb,
          ));
        }

        return BlocProvider(
          create: (cx) => cubit,
          child: Expanded(
            child: GridView.count(
              childAspectRatio: 180 / 100,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              controller: _controller,
              crossAxisCount: (Platform.isMobile(context))
                  ? 2
                  : Platform.getWidth(context) ~/ 250,
              children: widgets,
            ),
          ),
        );
      }
      return Container();
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/areas_bloc/area_cubit.dart';
import 'package:themealdb/presentation/blocs/categories_bloc/categories_cubit.dart';
import 'package:themealdb/presentation/blocs/details_bloc/details_bloc.dart';
import 'package:themealdb/presentation/blocs/home_bloc/search_meal_cubit.dart';
import 'package:themealdb/presentation/blocs/search_by_area_bloc/search_by_area_cubit.dart';
import 'package:themealdb/presentation/blocs/search_by_categorey_bloc/search_by_category_cubit.dart';
import 'package:themealdb/presentation/views/home.dart';
import 'core/Project_widgets/platform.dart';
import 'presentation/blocs/search_by_ingredients_bloc/search_by_ingredient_cubit.dart';
import 'presentation/views/splash_view.dart';
void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
    lazy: false,
    create: (context) {
      //return the block of this widget
      return HomeCubit();
    })
,BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return CategoriesCubit();
        }),
    BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return DetailsCubit();
        }),
    BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return SearchBYCategoryCubit();
        }),
    BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return AreasCubit();
        }),
    BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return SearchBYAreaCubit();
        }),
    BlocProvider(
        lazy: false,
        create: (context) {
          //return the block of this widget
          return SearchBYIngredientCubit();
        }),
  ],

      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Platform(
              desktop: Home(),
              tablet: SplashView(),
              mobile:SplashView(),
            ),
          )),
    ),
  );
}
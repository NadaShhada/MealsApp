// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:themealdb/presentation/views/search_meals_view.dart';
import 'package:themealdb/presentation/widgets/app_bar.dart';
import 'package:themealdb/presentation/widgets/app_bar_for_ingredients_show.dart';
import '../views/areas_view.dart';
import '../views/categories_view.dart';
import '../views/ingredients_show_view.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    MyAppBar(),
                    const SizedBox(
                      height: 7,
                    ),
                    const SearchMealsView()
                  ],
                ),
                Column(
                  children: [
                    AppBar(title: const Text("Meals Categories")),
                    const SizedBox(
                      height: 6,
                    ),
                    const CategoriesView()
                  ],
                ),
                Column(children: const [AreasView()]),
                Column(
                  children: [
                    MyAppBarForIngrendientsShow(),
                    const SizedBox(
                      height: 7,
                    ),
                    const IngredientsShowView()
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.fastfood),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.area_chart_sharp),
                  text: 'Areas',
                ),
                Tab(
                  icon: Icon(Icons.food_bank_outlined),
                  text: 'Search By Ingredients',
                ),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

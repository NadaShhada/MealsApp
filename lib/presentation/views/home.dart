// ignore_for_file: unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:themealdb/presentation/widgets/my_tab_bar.dart';

import '../blocs/home_bloc/search_meal_cubit.dart';

class Home extends StatelessWidget {
  final _controller = ScrollController();

  Home();

  @override
  Widget build(BuildContext context) {
    //var bloc = Provider.of<HomeCubit>(context, listen: false);

    return BlocProvider(
      lazy: false,
      create: (context) {
        //return the block of this widget
        return HomeCubit();
      },
      child: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

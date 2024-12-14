// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/categories_bloc/categories_cubit.dart';
import 'package:themealdb/presentation/views/categories_show_view.dart';
import 'package:provider/provider.dart';
import '../../core/constantas/styles.dart';
import '../blocs/search_by_categorey_bloc/search_by_category_cubit.dart';

class CategoriesWidget extends StatefulWidget {
  final String categoryName;
  final String categoryUrl;

  // ignore: use_key_in_widget_constructors
  const CategoriesWidget(
      {required this.categoryName, required this.categoryUrl});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: () async {
          Navigator.of(context).push(MaterialPageRoute(builder: (cx) {
            return MultiBlocProvider(providers: [
              BlocProvider<SearchBYCategoryCubit>.value(
                value: SearchBYCategoryCubit(),
              ),

              BlocProvider(
                  create: (cx) =>
                      Provider.of<CategoriesCubit>(context, listen: false)),

              //BlocProvider(
              // create: (cx) => Provider.of<SearchBYCategoryCubit>(context, listen: false),)
            ], child: CategoriesShowView(widget.categoryName));
          })).then((_) => setState(() {}));
        },
        child: Container(
          width: 180,
          height: 100,
          child: Stack(children: [
            Card(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.categoryUrl,
                        ),
                        fit: BoxFit.cover,
                      ))),
            ),
            SizedBox.expand(
              child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.categoryName,
                    style: Styles.showStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}

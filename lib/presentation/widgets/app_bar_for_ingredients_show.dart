// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import '../../../core/constantas/texts.dart';
import '../../core/Project_widgets/platform.dart';
import 'package:provider/provider.dart';
import '../blocs/search_by_ingredients_bloc/search_by_ingredient_cubit.dart';

class MyAppBarForIngrendientsShow extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<SearchBYIngredientCubit>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Opacity(
        opacity: 0.4,
        child: Card(
          elevation: 5,
          child: Row(
            children: [
              const Tab(icon: Icon(Icons.fastfood)),
              !(Platform.isMobile(context))
                  ? Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text(Texts.appName),
                        SizedBox(width: 10),
                      ],
                    )
                  : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: Texts.searchHint,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    bloc.getMealsByIngredient(
                        IngredientParams(_controller.text));
                  },
                  icon: const Icon(Icons.search_rounded))
            ],
          ),
        ),
      ),
    );
  }
}

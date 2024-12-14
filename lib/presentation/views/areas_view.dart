// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, unnecessary_cast

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/areas_bloc/area_cubit.dart';
import '../../core/Project_widgets/platform.dart';
import 'package:provider/provider.dart';
import '../../features/domain/entites/meal_area.dart';
import '../../features/domain/entites/meal_areas.dart';
import '../blocs/models_state.dart';
import '../widgets/areas_widget.dart';

class AreasView extends StatelessWidget {
  const AreasView();

  Color similarColor(Color color) {
    final random = Random();
    // offset red, green and blue values by up to 40
    var r = random.nextInt(16) * 16;
    var g = random.nextInt(16) * 16;
    var b = random.nextInt(16) * 16;
    return Color.fromRGBO(r, g, b, color.opacity);
  }

  List<Color> generateColors(int count) {
    var colors = <Color>[];
    const baseColor = Colors.pink;

    for (int i = 0; i < count; i++) {
      colors.add(similarColor(baseColor));
    }

    return colors;
  }

  @override
  Widget build(BuildContext context) {
    AreasCubit cubit = AreasCubit();
    cubit.getAreas();
    final _controller = ScrollController();

    return BlocBuilder<AreasCubit, ModelsState>(
        builder: (cx, ModelsState state) {
      var bloc = Provider.of<AreasCubit>(context, listen: false);

      if (state is ModelsLoadingState) {
        bloc.getAreas();
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
            Text(state.error),
          ],
        );
      } else if (state is ModelsDataState) {
        MealAreas model = state.data;
        List<MealArea> categoriesDetails =
            ((state as ModelsDataState).data as MealAreas).mealAreas;
        List<Widget> widgets = [];
        // const _MAX_VALUE = 0x100000000;
        //final _random = Random();

        List<Color> colors = generateColors(categoriesDetails.length);
//Color(Random().nextInt(0xffffffff));
        for (int i = 0; i < categoriesDetails.length; i++) {
          widgets.add(AreasWidget(
              strArea: categoriesDetails[i].strArea,
              backgroundColor: colors[
                  i] // Colors.primaries[math.Random().nextInt(Colors.primaries.length)] //Color(_random.nextInt(_MAX_VALUE))

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

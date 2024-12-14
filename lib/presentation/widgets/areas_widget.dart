// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/search_by_area_bloc/search_by_area_cubit.dart';
import '../../core/Project_widgets/platform.dart';
import '../../core/constantas/styles.dart';
import '../views/area_show_view.dart';

class AreasWidget extends StatefulWidget {
  final String strArea;
  final Color backgroundColor;

  const AreasWidget({required this.strArea, required this.backgroundColor});

  @override
  State<AreasWidget> createState() => _AreasWidgetState();
}

class _AreasWidgetState extends State<AreasWidget> {
  //final bool _isDoubleTapping = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                  builder: (context) => MultiBlocProvider(providers: [
                        BlocProvider<SearchBYAreaCubit>.value(
                          value: SearchBYAreaCubit(),
                        ),
                      ], child: AreaShowView(widget.strArea))))
              .then((_) => setState(() {}));
        },
        child: Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor, // Set the background color
            borderRadius:
                BorderRadius.circular(15.0), // Apply the border radius
          ),
          //  color: backgroundColor,
          width: (Platform.isMobile(context))
              ? 180
              : (Platform.getWidth(context)) / 2 - 40,
          height: (Platform.isMobile(context)) ? 100 : 100,
          child: Stack(children: [
            SizedBox.expand(
              child: Opacity(
                  opacity: 0.3,
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
                  Center(
                    child: Text(
                      widget.strArea,
                      style: Styles.showStyle,
                    ),
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

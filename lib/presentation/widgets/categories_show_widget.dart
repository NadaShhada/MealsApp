import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/home_bloc/search_meal_cubit.dart';
import '../../core/Project_widgets/platform.dart';
import '../views/details_view.dart';
import 'package:provider/provider.dart';

class CategoriesShowWidget extends StatelessWidget {
  final String idMeal;
  final String strMeal;
  final String strMealThumb;

  const CategoriesShowWidget({
    super.key,
    required this.idMeal,
    required this.strMeal,
    required this.strMealThumb,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: (Platform.isMobile(context)) ? 600 : 500,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          (Platform.isMobile(context))
              ? const SizedBox(height: 10.0)
              : const SizedBox(
                  height: 1,
                ),
          // ignore: sized_box_for_whitespace
          Container(
              width: (Platform.getWidth(context)),
              height: (Platform.isMobile(context)) ? 450 : 450,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 350,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Stack(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        image: DecorationImage(
                                            image: NetworkImage(strMealThumb),
                                            fit: BoxFit.fill)),
                                  ),
                                  SizedBox.expand(
                                    child: Opacity(
                                        opacity: 0.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                        )),
                                  ),
                                  const SizedBox()
                                ])),
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 1,
                    ),
                    Center(
                        child: Text(
                      strMeal,
                      style: TextStyle(
                        fontSize: (Platform.isMobile(context))
                            ? Platform.getWidth(context) * 0.03
                            : Platform.getWidth(context) * 0.013,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: (Platform.isMobile(context)) ? 120 : 120,
                      height: (Platform.isMobile(context)) ? 20 : 15,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (cx) {
                            return MultiBlocProvider(providers: [
                              BlocProvider(
                                  create: (cx) => Provider.of<HomeCubit>(
                                      context,
                                      listen: false)),
                            ], child: DetailsView(idMeal));
                          }));
                        },
                        child: const Expanded(child: Text("Show details")),
                      ),
                    ),
                    //const SizedBox(height: 10),
                  ]))
        ],
      ),
    ));
  }
}

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/presentation/blocs/home_bloc/search_meal_cubit.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/Project_widgets/platform.dart';
import '../../core/constantas/styles.dart';
import '../views/details_view.dart';
import 'package:provider/provider.dart';

class SearchMealsWidget extends StatefulWidget {
  final String idMeal;
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strMealThumb;
  final String? strSource;
  final String strYoutube;

  const SearchMealsWidget(
      {super.key,
      required this.idMeal,
      required this.strMeal,
      required this.strCategory,
      required this.strArea,
      required this.strMealThumb,
      required this.strSource,
      required this.strYoutube});

  @override
  State<SearchMealsWidget> createState() => _SearchMealsWidgetState();
}

class _SearchMealsWidgetState extends State<SearchMealsWidget> {
  double _opacity = 0.0;

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
          Container(
              width: (Platform.getWidth(context)),
              height: (Platform.isMobile(context)) ? 450 : 450,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        GestureDetector(
                          onTapDown: (TapDownDetails det) {
                            _opacity = 0.4;
                            setState(() {});
                          },
                          onTapUp: (TapUpDetails det) {
                            _opacity = 0.0;
                            setState(() {});
                          },
                          child: SizedBox(
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
                                              image: NetworkImage(
                                                  widget.strMealThumb),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox.expand(
                                      child: Opacity(
                                          opacity: _opacity,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.0)),
                                          )),
                                    ),
                                    (_opacity == 0.4)
                                        ? Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  widget.strMeal,
                                                  style: Styles.showStyle,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  widget.strCategory,
                                                  overflow: TextOverflow.fade,
                                                  style: Styles.showStyle,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  widget.strArea,
                                                  style: Styles.showStyle,
                                                )
                                              ],
                                            ),
                                          )
                                        : const SizedBox()
                                  ])),
                            ),
                          ),
                        ),
                        !(Platform.isMobile(context))
                            ? const SizedBox(
                                height: 15,
                              )
                            : const SizedBox(),
                        Center(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Text("youtubeUrl :",
                                  style: TextStyle(
                                      fontSize: (Platform.isMobile(context))
                                          ? Platform.getWidth(context) * 0.03
                                          : Platform.getWidth(context) * 0.013,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis)),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () =>
                                    launchUrl(Uri.parse(widget.strYoutube)),
                                child: Expanded(
                                  child: Text(
                                    widget.strYoutube,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // fontSize: (Platform.isMobile(context))
                                      //   ? Platform.getWidth(context) * 0.03
                                      // : Platform.getWidth(context) * 0.013,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      decoration: TextDecoration.underline,
                                      fontSize: (Platform.isMobile(context))
                                          ? 16.0
                                          : (Platform.isTablet(context))
                                              ? 14.0
                                              : 16.0,
                                      letterSpacing: 1.0,
                                      decorationThickness: 2.0,
                                      decorationColor: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Source : ",
                                style: TextStyle(
                                  fontSize: (Platform.isMobile(context))
                                      ? Platform.getWidth(context) * 0.03
                                      : Platform.getWidth(context) * 0.013,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: widget.strSource != null
                                      ? () async {
                                          await launchUrl(
                                              Uri.parse(widget.strSource!));
                                        }
                                      : null,
                                  child: Text(
                                    widget.strSource ?? "Not available",
                                    style: TextStyle(
                                      // fontSize: (Platform.isMobile(context))
                                      //   ? Platform.getWidth(context) * 0.03
                                      // : Platform.getWidth(context) * 0.013,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      decoration: TextDecoration.underline,
                                      fontSize: (Platform.isMobile(context))
                                          ? 16.0
                                          : (Platform.isTablet(context))
                                              ? 14.0
                                              : 16.0,
                                      letterSpacing: 1.0,
                                      decorationThickness: 2.0,
                                      decorationColor: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: (Platform.isMobile(context)) ? 120 : 120,
                        height: (Platform.isMobile(context)) ? 25 : 25,
                        child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Colors.lightBlue, Colors.blueAccent],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                                constraints: const BoxConstraints(
                                    maxWidth: 100.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Colors.lightBlue,
                                      Colors.deepPurpleAccent
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (cx) {
                                        return MultiBlocProvider(providers: [
                                          BlocProvider(
                                              create: (cx) =>
                                                  Provider.of<HomeCubit>(
                                                      context,
                                                      listen: false)),
                                        ], child: DetailsView(widget.idMeal));
                                      }));
                                    },

                                    style: TextButton.styleFrom(
                                      //  backgroundColor:
                                      //    Colors.blue.withOpacity(0.95),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.5),
                                        //side: BorderSide(
                                        //  color: Colors.blue.withOpacity(0.95),
                                        // width: 1),
                                      ),
                                    ),
                                    child: const Expanded(
                                        child: Text("Show details",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white))),
                                    //const SizedBox(height: 10),
                                  ),
                                ))))
                  ]))
        ],
      ),
    ));
  }
}

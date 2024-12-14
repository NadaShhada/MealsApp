// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String PhotoUrl;
  // ignore: use_key_in_widget_constructors
  const CardsWidget(this.PhotoUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      height: 470,
      child: Card(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                image: DecorationImage(
                  image: NetworkImage(
                    PhotoUrl,
                  ),
                  fit: BoxFit.cover,
                ))),
      ),
    );
  }
}

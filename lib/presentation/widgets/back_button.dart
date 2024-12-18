import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomBackButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Custom Back Button'),
      ),
    );
  }
}

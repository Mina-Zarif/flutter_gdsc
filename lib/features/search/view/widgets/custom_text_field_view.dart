import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: kPrimaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        labelText: 'Search',
      ),
    );
  }
}
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hoverColor: Colors.white,
        focusColor: Colors.white,
        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

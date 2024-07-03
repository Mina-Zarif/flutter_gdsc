import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gdsc/features/search/mange/search_cubit.dart';

import '../../../../constants.dart';

class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        SearchCubit cubit = BlocProvider.of(context);
        return TextField(
          onChanged: (value) {
            if(value.isNotEmpty) {
              cubit.searchMovie(value);
            }
          },
          decoration: const InputDecoration(
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
      },
    );
  }
}

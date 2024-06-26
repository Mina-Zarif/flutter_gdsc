import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/search/view/widgets/custom_text_field_view.dart';
import 'package:flutter_gdsc/features/search/view/widgets/empty_movies_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.only(top: 55, start: 35, end: 35),
      child: Column(
        children: [
          CustomTextFieldView(),
          EmptyMoviesView(),
        ],
      ),
    );
  }
}

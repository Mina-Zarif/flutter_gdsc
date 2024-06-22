import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/search/view/widgets/custom_text_field_view.dart';
import 'package:flutter_gdsc/features/search/view/widgets/search_movie_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 55, start: 35, end: 35),
      child: Column(
        children: [
          const CustomTextFieldView(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const SearchMovieView(),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 2,
            ),
          )
        ],
      ),
    );
  }
}

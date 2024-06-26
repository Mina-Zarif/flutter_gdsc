import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/details/view/widgets/details_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dora and the lost city of gold"),
      ),
      body: const DetailsBodyView(),
    );
  }
}

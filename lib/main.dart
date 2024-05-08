import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gdsc/cubit/app_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: const Text(
          "Hello World",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        ),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => AppCubit(),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              final AppCubit cubit = BlocProvider.of(context);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: cubit.dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      // setState(() {
                      //   dropdownValue = value!;
                      // });
                    },
                    items: cubit.list
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 50),
                  if (state is SuccessState) ...[
                    Text("Main: ${state.weatherModel.main!}"),
                    Text("desc: ${state.weatherModel.description!}"),
                    Text(
                        "pressure: ${state.weatherModel.pressure!.toString()}"),
                    Text("city: ${state.weatherModel.city!}"),
                  ],
                  if (state is ErrorState) Text(state.errorMsg),
                  if (state is! LoadingState)
                    ElevatedButton(
                      child: const Text("Get Weather"),
                      onPressed: () async => cubit.getData(),
                    )
                  else
                    const CircularProgressIndicator()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

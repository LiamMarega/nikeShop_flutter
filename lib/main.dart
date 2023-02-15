import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nike/cubit/generalSettingsCubit/general_settings_cubit.dart';
import 'package:flutter_nike/pages/containerPages/index.dart';
import 'package:flutter_nike/utils/theme/index.dart';

void main() async {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GeneralSettingsCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getThemeData(),
      home: ContainerScreens(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim/screens/hadeth/hadethdetails.dart';
import 'package:muslim/screens/home/home_screen.dart';
import 'package:muslim/screens/quraanscreen/sorascreen.dart';
import 'package:muslim/splashscreen.dart';
import 'package:muslim/themecubit/theme_cubit.dart';

import 'core/constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocConsumer<ThemeCubit, ThemeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ThemeCubit cubit = ThemeCubit.get(context);
          return MaterialApp(
            theme: cubit.isDark ? darkTheme : lightTheme,

            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.routeName,
            routes: {
              SplashScreen.routeName: (context) => const SplashScreen(),
              HomeScreen.routeName: (context) => const HomeScreen(),
              QuranDetailsScreen.routeName: (
                  context) => const QuranDetailsScreen(),
              hadethDetails.routeName: (BuildContext) => const hadethDetails(),
            },
          );
        },
      ),
    );
  }
}


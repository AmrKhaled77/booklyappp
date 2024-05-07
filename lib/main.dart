
import 'package:booklyappp/features/Theme/ThemeCuibt/theme_cubit.dart';
import 'package:booklyappp/features/Theme/theme.dart';
import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'package:go_router/go_router.dart';


import 'constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(

      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit,ThemeState>(
        builder: (BuildContext context, ThemeState state) {

          return  MaterialApp.router(

              localizationsDelegates:const   [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: BlocProvider.of<ThemeCubit>(context).IsEnglish?const Locale('en'):const Locale('ar'),
              supportedLocales:  const[
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],





            routerConfig:appRouter.router ,

            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme:lightMode,
            darkTheme: DarkMode,
            themeMode: BlocProvider.of<ThemeCubit>(context).Isdark?ThemeMode.dark:ThemeMode.light


          );
        },

      ),
    );

  }

}
// GoRouter





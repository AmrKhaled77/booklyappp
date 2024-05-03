
import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      routerConfig:appRouter.router ,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(

      scaffoldBackgroundColor: primaryColor

    ),
    );


  }

}
// GoRouter





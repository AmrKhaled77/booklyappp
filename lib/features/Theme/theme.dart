 import 'package:flutter/material.dart';

ThemeData lightMode=ThemeData(
  brightness: Brightness.light,


      colorScheme: const ColorScheme.light(
        background:Color.fromRGBO(209, 209, 209, 1.0)


      )


);

ThemeData DarkMode=ThemeData(
    brightness: Brightness.dark,

    colorScheme: const ColorScheme.dark(
background: Color(0xff100B20 ),
        primary: Color(0xff100B20 )

)
 );
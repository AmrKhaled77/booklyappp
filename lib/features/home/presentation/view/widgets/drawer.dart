import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Theme/ThemeCuibt/theme_cubit.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return     Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(

              title: Row(
                children: [
                  Text("Dark Mode"),
                  SizedBox(width: 55,),

                  Switch(
                    value:BlocProvider.of<ThemeCubit>(context).Isdark
                    , onChanged: (bool value) {
                    BlocProvider.of<ThemeCubit>(context).ChangeTheme(value);

                  } ,),
                ],

              )

          ),
          ListTile(
            title:   BlocProvider.of<ThemeCubit>(context).IsEnglish?Text("EN"):Text("AR"),
            onTap: () {
              BlocProvider.of<ThemeCubit>(context).Changelang();

            },
          ),
        ],
      ),
    );

  }
}

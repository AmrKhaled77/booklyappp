
import 'package:booklyappp/features/home/presentation/view/widgets/drawer.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/homeBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../Theme/ThemeCuibt/theme_cubit.dart';
import '../../date/repo/homeRepoIMPL.dart';
import '../view_model/FeaturedBookCubit/featuerd_books_cubit.dart';
import '../view_model/bestSellerCubit/best_seller_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider<BestSellerCubit>(
          create: (BuildContext context) =>BestSellerCubit(homeRepo: HomeRepoImpl())..featchBestSeller() ,
        ),
        BlocProvider<FeatuerdBooksCubit>(
          create: (BuildContext context) => FeatuerdBooksCubit(homeRepo:HomeRepoImpl() )..FeatchData(),
         )


      ],
      child:  BlocBuilder<ThemeCubit, ThemeState>(
  builder: (context, state) {
    return Scaffold(
        drawer:
       drawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body:const HomeBody()


      );
  },
),
    );
  }
}

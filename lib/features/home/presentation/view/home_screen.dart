
import 'package:booklyappp/features/home/presentation/view/widgets/homeBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../date/repo/homeRepoIMPL.dart';
import '../view_model/FeaturedBookCubit/featuerd_books_cubit.dart';
import '../view_model/bestSellerCubit/best_seller_cubit.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider<BestSellerCubit>(
          create: (BuildContext context) =>BestSellerCubit(homeRepo: HomeRepoImpl())..featchBestSeller() ,
        ),
        BlocProvider<FeatuerdBooksCubit>(
          create: (BuildContext context) => FeatuerdBooksCubit(homeRepo:HomeRepoImpl() )..FeatchData(),
        ),

      ],
      child: const Scaffold(
        body:HomeBody()


      ),
    );
  }
}

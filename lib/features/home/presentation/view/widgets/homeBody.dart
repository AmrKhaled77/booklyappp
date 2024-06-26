


import 'package:booklyappp/features/home/presentation/view/widgets/appBAr.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/carouselList.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/skelton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/FeaturedBookCubit/featuerd_books_cubit.dart';
import '../../view_model/bestSellerCubit/best_seller_cubit.dart';
import 'bestSellerListView.dart';
import 'customListView.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(left: 16.0),
      child:  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const APPbar(),
                const SizedBox(height: 20),

                BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
                  builder: (context, state) {
                    if(state is FeatuerdBookssucsess){
                      return carouselList(books: state.books,);
                    }
                    else if(state is FeatuerdBooksfailure){
                      return Text(state.errorMassge);


                    }else{
                      return const Center(child:  Skeleton(height: 300,width: 210,));
                    }
                  },
                ),

                const SizedBox(height: 50),
                const Text('Best seller',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),






              ],
            ),
          ),

          SliverFillRemaining(


            child: BlocBuilder<BestSellerCubit, BestSellerState>(
              builder: (context, state) {
                if(state is BestSellerSucsess){

                  return   BestSellerListView(books: state.books,);
                }else if(state is BestSellerFailure){
                  return Text(state.errorMassge);

                }else{
                  return  Center(
                    child:ListView.builder(itemBuilder: (context ,index){
                      return const  Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  NewsCardSkelton(),
                      );


                    }
                    ,itemCount: 7,
                    )
                  );
                }

              },
            )
          )
        ],

      ),
    );
  }


}









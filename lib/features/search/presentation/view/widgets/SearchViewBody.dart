import 'package:booklyappp/features/search/presentation/view/widgets/searchresultListview.dart';
import 'package:booklyappp/features/search/presentation/viewModel/search%20bloc/search_bloc_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/view/widgets/bestSeller.dart';
import '../../../../home/presentation/view/widgets/bestSellerListView.dart';
import 'CustomSearchTextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(30.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                customSearchTextField(),


                BlocBuilder<SearchBlocCubit, SearchBlocState>(
                    builder: (context, state) {
                      if(state is SearchBlocInitial){
                        return SizedBox(
                          height: MediaQuery.of(context).size.height*.7,
                          child: const Center(
                            child:Text('no data '),
                          ),
                        );

                      }else if(state is SearchBlocsucsses){

                        return Expanded(child: customSearchresult(books: state.books,));

                      }else if(state is SearchBlocfaliur){

                        return  Text(state.errorMasege);
                      }else {
                        return const Center(child: CircularProgressIndicator(),);

                      }

                    }
                )


              ],
            ),
          )
        ],

      ),
    );
  }
}




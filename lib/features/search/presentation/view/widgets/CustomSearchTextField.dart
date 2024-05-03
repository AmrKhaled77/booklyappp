import 'package:booklyappp/features/search/presentation/viewModel/search%20bloc/search_bloc_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booklyappp/features/search/presentation/viewModel/search%20bloc/search_bloc_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class customSearchTextField extends StatelessWidget {
   customSearchTextField({Key? key}) : super(key: key);

  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: _textController,
      onChanged: (key){
        BlocProvider.of<SearchBlocCubit>(context).GetData(key: key);

      },
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          helperText: "search",
          suffixIcon: Opacity(
            opacity: 0.5,
            child: IconButton(
                color: Colors.white,
                onPressed: (){
                  BlocProvider.of<SearchBlocCubit>(context).GetData(key: _textController.text);

                }, icon: const Icon(Icons.search)),
          )
      ),


    );
  }
}
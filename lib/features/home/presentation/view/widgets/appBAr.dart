
import 'package:booklyappp/constans.dart';
import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class APPbar extends StatelessWidget {
  const APPbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(LogoPath,height:40 ,),
          IconButton(onPressed: (){
            GoRouter.of(context).push(appRouter.KbookSearchPath);

          }, icon: const Icon(Icons.search)),

        ],),
    );
  }
}
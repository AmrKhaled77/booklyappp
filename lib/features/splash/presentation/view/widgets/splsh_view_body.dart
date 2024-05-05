
import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constans.dart';
import '../../../../home/presentation/view/home_screen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation= Tween<Offset>(begin:const Offset(0,3) ,end:Offset.zero ).animate(animationController);
    animationController.forward();


   Future.delayed(Duration(seconds: 3),(){
     GoRouter.of(context).pushReplacement(appRouter.KhomePath);
   });

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

    Image.asset(LogoPath),

        AnimatedBuilder(
          animation: animation,
          builder: (context,_){
            return  SlideTransition(

                position: animation,
                child: const Text('read free books',style: TextStyle(color: Colors.white,
                fontStyle:FontStyle.italic,
                  fontWeight: FontWeight.bold

                ),textAlign: TextAlign.center,

                )
            );
          },

        ),


       ],
    );
  }
  void nav(){
    Future.delayed(const Duration(seconds: 3), (){
      Get.to(()=>HomeScreen(),transition: Transition.fadeIn);

    });
  }
}



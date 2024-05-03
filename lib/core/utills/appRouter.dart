
import 'package:booklyappp/features/home/presentation/view/BookDeatils_Screen.dart';
import 'package:booklyappp/features/home/presentation/view/home_screen.dart';
import 'package:booklyappp/features/splash/presentation/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/date/models/BookModel/book_model.dart';
import '../../features/search/presentation/view/searchScreen.dart';

abstract class appRouter {

  static String KhomePath='/homeView';
  static String KbookDetailsPath='/homedetails';
  static String KbookSearchPath='/search';

   static final router = GoRouter(
     routes: [
       GoRoute(
         path: '/',
         builder: (context, state) => const SplashScreen(),
       ),
       GoRoute(
         path:KhomePath ,
         builder: (context, state) =>  HomeScreen(),
       ),
       GoRoute(
         path: KbookDetailsPath,
         builder: (context, state) =>   BookDetails(
           bookModel: state.extra as BookModel,
         ),
       ),
       GoRoute(
         path: KbookSearchPath,
         builder: (context, state) =>  const SearchScreen(),
       ), // GoRoute
     ],
   );
 }
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../../../../../core/utills/functions.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,

    required this.bookModel






  }) ;
  final BookModel bookModel;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child:GetSecondBottm(bookModel: bookModel)
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 48,
            child: ElevatedButton(

              onPressed:(){
                launchURL(bookModel.volumeInfo.infoLink);
              } ,
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffEF8262),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(16.0),bottomRight:Radius.circular(16.0) )
                  )
              ), child:
            Container(
              child:  const Text("free preview ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 18),),
            ),

            ),
          ),
        ),
      ],
    );
  }
}
Widget GetSecondBottm({required BookModel bookModel}){
  if(bookModel!.accessInfo!.pdf!.isAvailable!){
    return   ElevatedButton(

      onPressed:(){
        launchURL(bookModel.accessInfo!.pdf!.acsTokenLink!);
      } ,
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),bottomLeft:  Radius.circular(16.0))
          )
      ), child:
    Container(
      child:  const Text("download ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
    ),

    );
  }else{
    return  ElevatedButton(

      onPressed:(){
        launchURL(bookModel.accessInfo!.pdf!.acsTokenLink!);
      } ,
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),bottomLeft:  Radius.circular(16.0))
          )
      ), child:
    const Text("not available ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),

    );
  }
}
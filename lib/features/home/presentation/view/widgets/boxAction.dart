import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,







  }) ;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child: ElevatedButton(

              onPressed:(){} ,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),bottomLeft:  Radius.circular(16.0))
                  )
              ), child:
            Container(
              child:  Text("19.99 \$",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
            ),

            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 48,
            child: ElevatedButton(

              onPressed:(){} ,
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffEF8262),
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
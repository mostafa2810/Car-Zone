 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

String image;
Buttons(this.image);
   @override
   Widget build(BuildContext context) {

     return Container(
       color:Colors.transparent,
       child:SizedBox(
         width:90 ,
         height:100,
         child:
         RaisedButton(

            colorBrightness:Brightness.light,
           child:   Image.asset(image,width:double.infinity,height:double.infinity,),
           color:Colors.white,
           elevation: 0,
           onPressed: () {

           },
         ),
       ),
     );
   }

 }

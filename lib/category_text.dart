import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget{

  String buttonText;
  ButtonText(this.buttonText);
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding:EdgeInsets.all(15),
        width:130,
        height:115 ,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(12),
            ),
          ),
          onPressed:null,
          child:  Text(buttonText,textAlign:TextAlign.center,
          style:TextStyle(
            fontSize:16,
            fontWeight:FontWeight.bold,
            color:Color.fromARGB(255, 63, 69, 82) ,

          ),),
        ),
      );


    //   Container(
    //   color:Colors.transparent,
    //   child:SizedBox(
    //     width:160 ,
    //     height:80,
    //     child:
    //     RaisedButton(
    //       colorBrightness:Brightness.light,
    //       child:  Text( buttonText,textAlign:TextAlign.center,
    //         style:TextStyle(
    //           fontSize:16,
    //           fontWeight:FontWeight.bold,
    //           color:Color.fromARGB(255, 6, 165, 244) ,
    //
    //         ),),
    //       color:Colors.white,
    //       elevation: 0,
    //       onPressed: () {},
    //     ),
    //   ),
    // );

  }

}
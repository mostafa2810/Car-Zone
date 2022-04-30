import 'package:flutter/material.dart';

bool isvalidemail(String email){
  return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}
void showmessage(String message, BuildContext context){
  showDialog(context: context, builder: (buildcontext){
    return AlertDialog(
      content: Text(message),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('ok'))
      ],


    );
  });


}
void showloading(BuildContext context){
  showDialog(context: context, builder: (buildcontext){
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 12),
            Text('loading...')
          ],
        ),
      ),
    );
  },barrierDismissible: false
  );
}
void hideloading(BuildContext context){
  Navigator.pop(context);
}
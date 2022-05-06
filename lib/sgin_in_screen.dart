

import 'package:car_zone/home_page.dart';
import 'package:car_zone/homepage-widget.dart';
import 'package:car_zone/login_screen.dart';
import 'package:car_zone/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class sginin extends StatefulWidget{
  static const String routeName='sgin in';

  @override
  State<sginin> createState() => _sgininState();
}

class _sgininState extends State<sginin> {
  String email='',password='';
var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(255, 255, 255, 1.0),
      body: Form(
        key: formkey,
        child: Container(
          width:double.infinity,
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 8),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, homepage.routeName);
                  }, child: Container(
                    alignment: Alignment.topRight,
                      child: Text('SKIP', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 15),
                  child: Image.asset('assets/images/logo.png',width:174,height:51.5,),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 12),
                  child: Text('Welcme back!'
                    ,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight:FontWeight.bold),),
                ),
                // SizedBox(height:30,),


                Container(
                    margin: EdgeInsets.symmetric(horizontal:45,),
                    child: Text('Email',style: TextStyle(fontSize: 16,fontWeight:
                    FontWeight.bold),)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:45,vertical:8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),
                  child: TextFormField(
                    style:TextStyle(color:Colors.black,fontSize: 12),
                    decoration:InputDecoration(
                      hintText: 'please enter email',hintStyle:TextStyle(color:Color.fromARGB(
                        255, 206, 209, 216),),
                    ),
                    onChanged: (text) {
                      email = text;
                    },
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter email';
                      }
                      if (!isvalidemail(email)) {
                        return 'please enter valid email';
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal:45,),
                    child: Text('password',style: TextStyle(fontSize: 16,fontWeight:
                    FontWeight.bold),)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:45,vertical:8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),
                  child: TextFormField(
                    obscureText: true,
                    style:TextStyle(color:Colors.black,fontSize: 12),
                    decoration:InputDecoration(
                      hintText: 'please enter your password',hintStyle:TextStyle(color:Color.fromARGB(
                        255, 206, 209, 216),),
                    ),
                      onChanged: (text) {
                password = text;
                },
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'please enter password';
                    }
                    if (text.length < 6) {
                      return 'password should be at least 6 chars';
                    }
                    return null;
                  },
                  ),
                ),
                // Container(
                //     margin: EdgeInsets.symmetric(horizontal:45,vertical: 6),
                //     child: Text('forget password?',style: TextStyle(fontSize: 14,
                //     ),)),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(width: 160,height: 1.5,color: Color.fromARGB(
                              255, 206, 209, 216),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('OR')
                        ],
                      ),
                      Column(
                        children: [
                          Container(width: 175,height: 1.5,color: Color.fromARGB(
                              255, 206, 209, 216),)
                        ],
                      ),




                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      Column(
                        children: [

                          Container(
                              margin: EdgeInsets.symmetric(horizontal:20,vertical:8),
                              child:
                              Image.asset('assets/images/facebook.png')),

                        ],
                      ),
                      Column(
                        children: [

                          Container(
                              margin: EdgeInsets.symmetric(horizontal:20,vertical:8),
                              child:
                              Image.asset('assets/images/twitter.png')),

                        ],
                      ),
                      Column(
                        children: [

                          Container(
                              margin: EdgeInsets.symmetric(horizontal:20,vertical:8),
                              child:
                              Image.asset('assets/images/google.png')),

                        ],
                      ),




                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: 34, vertical: 1),
                        child: ElevatedButton(
                          onPressed: () {

                            if (formkey.currentState?.validate() == true) {
                              loginaccountwithfirebaseauth();
                              // Navigator.pushNamed(context, homepage.routeName) ;
                            }


                          },
                          child: Text('LOG IN',
                              style: TextStyle(color: Colors.white)),
                          style: ButtonStyle(

                            backgroundColor: MaterialStateProperty.all(
                                (Color.fromARGB(255, 6, 165, 244))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                Container(
                  margin: EdgeInsets.symmetric(horizontal:35,vertical:1),
                  child: Row(
                    children: [
                      Text('dont have an account?'),
                      TextButton(
                        child:Padding(
                          padding: const EdgeInsets.symmetric(horizontal:0),
                          child: Text('sgin up',style: TextStyle(color: Colors.black,fontSize: 12),),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, logincreen.routeName) ;
                        }, )
                    ],

                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );

  }
  void loginaccountwithfirebaseauth() async {
    try {
showloading(context);
      var result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      hideloading(context);
      if (result != null) {
        showmessage('user logged in successfully ', context);

      }
    } catch (error) {
      hideloading(context);
      showmessage('invalid email or password', context);

    }
  }


}
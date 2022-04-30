import 'package:car_zone/home_page.dart';
import 'package:car_zone/sgin_in_screen.dart';
import 'package:car_zone/google.dart';
import 'package:car_zone/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logincreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<logincreen> createState() => _logincreenState();
}

class _logincreenState extends State<logincreen> {
  String fullname = '', email = '', password = '', confirmpassword = '';

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: Form(
        key: formkey,
        child: Container(
          width: double.infinity,

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, sginin.routeName);
                  }, child: Text('SKIP',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 1),
                  
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 174,
                    height: 51.5,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                  child: Text(
                    'Create an Account!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Text(
                      'Full name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),

                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'please enter full name',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 206, 209, 216),
                      ),
                    ),
                    onChanged: (text) {
                      fullname = text;
                    },
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter full name';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'please enter email',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 206, 209, 216),
                      ),
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
                    margin: EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Text(
                      'password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'please enter your password',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 206, 209, 216),
                      ),
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
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Text(
                      'Confirm password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                  // padding: EdgeInsets.symmetric(vertical:6,horizontal:6 ),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    decoration: InputDecoration(
                      hintText: ' please enter confirm password',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 206, 209, 216),
                      ),
                    ),
                    onChanged: (text) {
                      confirmpassword = text;
                    },
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter confirmpassword';
                      }
                      if (text.length < 6) {
                        return 'password should be at least 6 chars';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 160,
                            height: 1.5,
                            color: Color.fromARGB(255, 206, 209, 216),
                          ),
                        ],
                      ),
                      Column(
                        children: [Text('OR')],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 175,
                            height: 1.5,
                            color: Color.fromARGB(255, 206, 209, 216),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 4),
                              child: TextButton(onPressed: (){

                              },
                                child: Image.asset(
                                    'assets/images/facebook.png'),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 4),
                              child: TextButton(onPressed: (){},
                                  child: Image.asset('assets/images/twitter.png'))),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: TextButton(onPressed: (){
                                 Navigator.pushNamed(context, SignInDemo.routeName);


                              },
                                  child: Image.asset('assets/images/google.png'))),
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
                            Navigator.pushNamed(context, homepage.routeName) ;
                            if (formkey.currentState?.validate() == true) {
                              creataccountwithfirebaseauth();
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
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 1),
                  child: Row(
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            'sgin in',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                        // style: ElevatedButton.styleFrom(
                        //     primary: Colors.transparent, elevation: 0),
                        onPressed: () {
                          Navigator.pushNamed(context, sginin.routeName);
                        },
                      )
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

  void creataccountwithfirebaseauth() async {
    try {
      showloading(context);
      var result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      hideloading(context);
      if (result != null) {
        showmessage('user registered successfully ', context);

      }
    } catch (error) {
      hideloading(context);
      showmessage(error.toString(), context);

    }
  }
}

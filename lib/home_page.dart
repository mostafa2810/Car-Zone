import 'package:car_zone/category.dart';
import 'package:car_zone/compar.dart';
import 'package:car_zone/fav.dart';
import 'package:car_zone/homepage-widget.dart';

import 'package:car_zone/profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget{
  static const String routeName='home';

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int CurrentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white
          ),

          child: BottomNavigationBar(
            onTap: (index){
              CurrentPage=index;
              setState(() {

              });
            },

            selectedItemColor: Color.fromRGBO(255, 176, 31, 1.0) ,
            unselectedItemColor: Color.fromRGBO(181, 180, 180, 1.0) ,
            currentIndex: CurrentPage,

            backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/images/home.png',),
                  label: 'HOME'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/categoryicon.png'),
                  label: 'category'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/compar.png'),
                  label: 'compare'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/fav.png'),
                  label: 'fav'),
              BottomNavigationBarItem(icon: Image.asset('assets/images/profil.png'),
                  label: 'profile'),


            ],
          ),
        ),
        body: getCurrentPage()

    );

  }
  Widget getCurrentPage(){
    if(CurrentPage==0){
      return homepagewidget();
    }


    else if(CurrentPage==1){
      return category();
    }
    else if(CurrentPage==2){
      return compar();
    }
    else if(CurrentPage==3){
      return fav();
    }

    else return profil();

  }
}
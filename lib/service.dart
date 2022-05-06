import 'dart:ui';

import 'package:car_zone/category.dart';
import 'package:car_zone/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class service extends StatefulWidget{
  static const String routeName='car';

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  String dropdownBrand = 'Brand';

  String dropdownModel = 'Model';

  String dropdownCity = 'City';

  var Brand = [
    'Brand',
    'Brand 2',
    'Brand 3',
    'Brand 4',
    'Brand 5',
  ];

  var Model = [
    'Model',
    'Model 2',
    'Model 3',
    'Model 4',
    'Model 5',
  ];

  var City = [
    'City',
    'City 2',
    'City 3',
    'City 4',
    'City 5',
  ];

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body: Container(
       margin: EdgeInsets.symmetric(vertical: 38),
       color: Colors.white,
child: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child:   Column(
    children: [
  
  
        Expanded(
          flex: 0,
          child: Container(
            child: Row(

              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
                Expanded( child: Image.asset('assets/images/logocaricon.png',width:174,height:51.5,)),
                Expanded(
                  flex: 4,
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: TextField(
                            style:TextStyle(height:0),
                            decoration: new InputDecoration(
                              prefixIcon:(Icon(Icons.search)),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(80)),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      Expanded(
        flex: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/iconservice.png',width: 70,height: 80,),
        ],
      )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Follow the periodic maintenance schedule and' '\n'
              'pare parts change dates with the necessary alerts',
            style: TextStyle(fontWeight: FontWeight.bold),),
  
        ],
      ),
      Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
      decoration:BoxDecoration(color:Color.fromARGB(
      255, 227, 227, 227),
      borderRadius: BorderRadius.all(Radius.circular(8),
      ),
      border: Border.all(color:Color.fromARGB(
      255, 112, 112, 112),)),
      child: Column( crossAxisAlignment:CrossAxisAlignment.stretch,
      children:[
      Padding(
      padding: const EdgeInsets.all(8.0),

      child: TextFormField(

          initialValue: 'car name', style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
      ),
  
      Container(
      color:Color.fromARGB(
      255, 112, 112, 112),
      height: 1,
      ),
  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            isExpanded: true,
            // Initial Value
            value: dropdownBrand,
            iconSize:35,
            // Down Arrow Icon
            icon: const Icon(Icons.arrow_drop_down,),
  
            // Array list of items
            items: Brand.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold),),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownBrand = newValue!;
              });
            },
          ),
        ),
  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            isExpanded: true,
            // Initial Value
            value: dropdownModel,
            // Down Arrow Icon
            icon: const Icon(Icons.arrow_drop_down),
            iconSize:35,
            // Array list of items
            items: Model.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownModel = newValue!;
              });
            },
          ),
        ),
  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(initialValue: 'km2', style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
        ),
  
        Padding(
          padding:EdgeInsets.symmetric(vertical:12),
          child: Container(
            margin:EdgeInsets.symmetric(horizontal:8),
  
            color:Color.fromARGB( 255, 112, 112, 112),
  
            height:0.5,
          ),
        ),
  
  
        Padding(
          padding:EdgeInsets.symmetric(vertical:12,horizontal:8),
          child: DropdownButton(
            isExpanded: true,
            // Initial Value
            value: dropdownCity,
            // Down Arrow Icon
            icon: const Icon(Icons.arrow_drop_down),
            iconSize:35,
            // Array list of items
            items: City.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownCity = newValue!;
              });
            },
          ),
        ),
  
        Padding(
          padding: const EdgeInsets.symmetric(vertical:12),
          child: Container(
  
          ),
        ),
      ],
      ),
      ),
      ),
      SizedBox(height:30,),
  
      Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width:double.infinity,
          height:50,
          child:ElevatedButton(
  
              onPressed:(){},
              child:Text('Add Car',style:TextStyle(fontWeight:FontWeight.bold))
          )
          ,
        ),
      ),
  
  
  
  
  
  
  
  
  
    ],
  ),
),
     ),
   );
  }
}


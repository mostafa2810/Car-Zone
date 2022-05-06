import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class selling_car extends StatefulWidget {
  static const  String routeName ='Selling Car';
  @override
  State<selling_car> createState() => _selling_carState();
}
class _selling_carState extends State<selling_car> {
  String dropdownTitle = 'Title';
  String dropdownModel = 'Model';
  String dropdownFuelType = 'Fuel Type';
  String dropdownYear = 'Year';
  String dropdownKilomeres = 'Kilomeres';
  String dropdownCondition = 'Condition';
  String dropdownColor = 'Color';
  String dropdownBody_Type= 'Body Type';
  String dropdownLocation= 'Location';


  // List of items in our dropdown menu
  var Title = [
    'Title',
    'Title 2',
    'Title 3',
  ];
  var Model = [
    'Model',
    'Model 2',
    'Model 3',
  ];
  var FuelType = [
    'FuelType',
    'FuelType 2',
    'FuelType 3',
  ];
  var Year = [
    'Year',
    'Year 2',
    'Year 3',
  ];
  var Kilomeres = [
    'Kilomeres',
    'Kilomeres 2',
    'Kilomeres 3',
  ];
  var Condition = [
    'Condition',
    'Condition 2',
    'Condition 3',
  ];
  var Color = [
    'Color',
    'Color 2',
    'Color 3',
  ];
  var Body_Type = [
    'BodyType',
    'BodyType 2',
    'BodyType 3',
  ];
  var Location = [
    'Location',
    'Location 2',
    'Location 3',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(vertical: 38),

        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children:[
              Expanded(
                flex:0,
                child: Container(
                  child:
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [

                      TextButton(onPressed: (){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back,color:Colors.black,size:30,),),


                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Image.asset('assets/images/logocaricon.png',alignment:
                          Alignment.topLeft, width:174,height:51.5,),
                      ),

                    ],


                  ),


                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),
                    ),
                        border: Border.all(color: Colors.black)),


                    child: TextButton(
                      onPressed: (){},
                        child: Image.asset('assets/images/camera.png')
              ))),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.stretch,
                  children:[

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownTitle,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items: Title.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownTitle = newValue!;
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
                      child: TextFormField( initialValue:'Price (EGP)',
                          style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                    ),

                    Padding(
                      padding:EdgeInsets.symmetric(vertical:12,horizontal:8),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownYear,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items: Year.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownYear = newValue!;
                          });
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownKilomeres,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items:  Kilomeres.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownKilomeres = newValue!;
                          });
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownCondition,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items:  Condition.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownCondition = newValue!;
                          });
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownColor,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items:  Color.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownColor = newValue!;
                          });
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownLocation,
                        // Down Arrow Icon
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize:35,
                        // Array list of items
                        items:  Location.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownLocation = newValue!;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField( initialValue:'Name ',
                          style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField( initialValue:'E-mail ',
                          style:TextStyle(fontSize:12,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:30,),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width:double.infinity,
                        height:50,
                        child:ElevatedButton(

                            onPressed:(){},
                            child:Text('Submit',style:TextStyle(fontWeight:FontWeight.bold))
                        )
                        ,
                      ),
                    ),











                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
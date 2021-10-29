import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {


  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> with AutomaticKeepAliveClientMixin{



  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
   String? _selectedLocation= null;
   List<String> _package =['Free', 'Medium', 'Premium'];
   String? _selectedPackage=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(

        children: [

          Column(
            children: [
              SizedBox(height: 100,),
              SizedBox(width: 200,),
              Text("Spacer Niches", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,
              ),),
            ],
          ),
          SizedBox(height: 300,),
          SizedBox(width: 20,),
          DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,

            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue as String;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
          SizedBox(width: 300,),
          DropdownButton(
            hint: Text('Please choose a Package'), // Not necessary for Option 1
            value: _selectedPackage,
            onChanged: (newValue) {
              setState(() {
                _selectedPackage = newValue as String;
              });
            },
            items: _package.map((Package) {
              return DropdownMenuItem(
                child: new Text(Package),
                value: Package,
              );
            }).toList(),
          ),
// Padding(padding: EdgeInsets.only(left: 400)),

Column(
mainAxisAlignment: MainAxisAlignment.end,

  //crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(children: [
            Text('Cell 1'),
            Text('Cell 2'),
            Text('Cell 3'),
          ]),
          TableRow(children: [
            Text('Cell 4'),
            Text('Cell 5'),
            Text('Cell 6'),
          ])
        ],
      ),
    ),
  ],
),


        ],
      ),

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
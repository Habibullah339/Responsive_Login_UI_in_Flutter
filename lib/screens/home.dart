import 'package:flutter/material.dart';
import 'package:sample3/screens/first.dart';
import 'package:sample3/screens/second.dart';
import 'package:sample3/screens/third.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // drawer: Drawer(
        //     child: Drawer(
        //       child: ListView(
        //         // Important: Remove any padding from the ListView.
        //         padding: EdgeInsets.zero,
        //         children: <Widget>[
        //           DrawerHeader(
        //               child:  FlutterLogo()
        //           ),
        //           ListTile(
        //             title: Text('Item 1'),
        //             leading: Icon(Icons.settings_applications),
        //             onTap: () {
        //               Navigator.pop(context);
        //             },
        //           ),
        //           ListTile(
        //             title: Text('Item 2'),
        //             leading: Icon(Icons.contacts),
        //             onTap: () {
        //
        //             },
        //           ),
        //         ],
        //       ),
        //     )// Populate the Drawer in the next step.
        // ),
        appBar: AppBar(
          title: Text("Niche Space "),
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
              //Tab(icon: Icon(Icons.directions_car)),
              Tab(text: "Dashboard",),

              Tab(text: "Cards",),
              Tab(text: "Owners",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
        persistentFooterButtons: [
          SizedBox(width: 80,),
          Container(
            width: 1400,
        decoration: BoxDecoration(
          color: Colors.black,

        ),
            child: Text(
              'Niche Space Limited © 2021',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
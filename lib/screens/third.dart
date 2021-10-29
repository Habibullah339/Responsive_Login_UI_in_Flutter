import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {


  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DemoWillPopScope()));
                },
                child: Text("Navigate to Fourth screen"))
          ],
        ),
      ),
    );
  }
}

class DemoWillPopScope extends StatefulWidget {
  @override
  _DemoWillPopScopeState createState() => _DemoWillPopScopeState();
}

class _DemoWillPopScopeState extends State<DemoWillPopScope> {
  bool _allowPopBack = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return _allowPopBack;
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Demo WillPopScope')),
        body: Center(
          child: RaisedButton(
            child: Text('Allow pop back: $_allowPopBack'),
            onPressed: () {
              setState(() {
                _allowPopBack = !_allowPopBack;
              });
            },
          ),
        ),
      ),
    );
  }
}
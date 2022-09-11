import 'package:flutter/material.dart';
import 'package:firstflutterapp/calculator.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/camping.png'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Kelompok 2',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Text(
            '1. Al Ahmad Syah\n'
            '2. Dimas Wicaksono\n'
            '3. Ihsan Reihansyah',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ],
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        //borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          color: Colors.lightGreen,
          child: Text('Next', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, loginButton],
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white60,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('Kelompok 2'),
        ),
        actions: <Widget>[
          new Icon(Icons.search),
        ],
      ),
      body: Center(
        child: ListView(
          //padding: EdgeInsets.all(8.0),
          children: <Widget>[
            body,
            //SizedBox(height: 24.0),
            //loginButton,
          ],
        ),
      ),
    );
  }
}

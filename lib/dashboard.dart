import 'package:flutter/material.dart';

import 'package:firstflutterapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firstflutterapp/page_detail_countries.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dimas Wicaksono",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late SharedPreferences loginData;
  late String username;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => PageDetailCountries(),
                    ),
                  );
                },
                child: Text("Detail Countries"),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  loginData.setBool("login", true);
                  Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => MyLoginPage(),
                    ),
                  );
                },
                child: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

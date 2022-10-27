import 'page_detail_countries.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dimas Wicaksono',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const PageDetailCountries(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/nav_pages.dart/main_page.dart';
import 'package:travel_app/pages/Welcome_page.dart';

 void main() {
  runApp(Myapp());
  
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App",
      debugShowCheckedModeBanner: false,

      home: MainPAge(),
    );
    
  }
}
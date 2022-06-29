import 'package:flutter/material.dart';
import 'package:travel_app/nav_pages.dart/bar_item.dart';
import 'package:travel_app/nav_pages.dart/my_page.dart';
import 'package:travel_app/nav_pages.dart/search_page.dart';
import 'package:travel_app/pages/home_page.dart';

class MainPAge extends StatefulWidget {

  const MainPAge({Key? key}) : super(key: key);

  @override
  State<MainPAge> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPAge> {
  List pages=[
    HomePage(),
    BAritemPage(),
    SearchPage(),
    MyPage(),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[index],
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Catogrey", icon: Icon(Icons.category_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
             BottomNavigationBarItem(label: "Mypage", icon: Icon(Icons.person)),],
            currentIndex: index,
          onTap: (int i){
            setState(() {
              index=i;
            });
          },

      
      
      ),
    );
    
  }
}
import 'package:flutter/material.dart';

import '../widget/catalogwidget.dart';
import '../widget/favouritewidget.dart';
import '../widget/homewidget.dart';
import '../widget/shoppingcartwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [HomeWidget(),CatalogWidget(),FavouriteWidget(),ShoppingCartWidget()];
    List <String> title_text =[""];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title_text[selectedIndex]),
      //   backgroundColor: Colors.green,
      //   elevation: 1,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFFC2D1D9),
        unselectedItemColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF165069),
        
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),),
            BottomNavigationBarItem(icon: Icon(Icons.catching_pokemon)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
        ],
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        ),
       drawer: Drawer(),
        body: widget[selectedIndex],
    );
  }
}
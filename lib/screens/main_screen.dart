import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/screens/account_screen.dart';
import 'package:multi_vendor_shop_app/screens/cart_screen.dart';
import 'package:multi_vendor_shop_app/screens/home_screen.dart';
import 'package:multi_vendor_shop_app/screens/messege_screen.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;


  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessegeScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor2,
        elevation: 4,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon( _selectedIndex ==0 ? Icons.home : Icons.home_outlined ,size: 30,),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? CupertinoIcons.chat_bubble_text_fill :  CupertinoIcons.chat_bubble_text,size: 30,),
            label: 'Messege',

          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex==2 ? CupertinoIcons.cart_fill:CupertinoIcons.shopping_cart,size: 30,),
            label: 'Cart',

          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? CupertinoIcons.person_solid :CupertinoIcons.person,size: 30,),
            label: 'Account',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:mainColor4,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey.shade400,

        onTap: _onItemTapped,
      ),
    );
  }
}

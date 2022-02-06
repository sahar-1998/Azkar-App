import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/widgets/banner_widget.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';
import 'package:multi_vendor_shop_app/widgets/highlight_brands.dart';
import 'package:multi_vendor_shop_app/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeead),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: mainColor4,
        title: const Text(
          'Shop App',
          style: TextStyle(fontSize: 26, letterSpacing: 2, fontFamily: 'Anton'),
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.cart), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          SearchWidget(),
          SizedBox(
            height: 10,
          ),
          BannerWidget(),
          HighlightBrands(),
        ],
      ),
    );
  }
}

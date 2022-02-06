import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_vendor_shop_app/screens/main_screen.dart';
import 'package:multi_vendor_shop_app/screens/launch_screen.dart';
import 'package:multi_vendor_shop_app/screens/out_boarding_screen.dart';


void main() async {

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context)=> const LaunchScreen(),
        '/out_boarding_screen' : (context)=> const OutBoardingScreen(),
        '/main_screen': (context)=> const MainScreen(),
      },

    );
  }
}




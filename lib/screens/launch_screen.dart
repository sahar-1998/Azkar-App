import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  final store = GetStorage();

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      bool? _boarding = store.read('outBoarding');
      _boarding == null ?  Navigator.pushReplacementNamed(context, '/out_boarding_screen'):
      _boarding == true ? Navigator.pushReplacementNamed(context, '/main_screen'):
      Navigator.pushReplacementNamed(context, '/out_boarding_screen');

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return Scaffold(
      backgroundColor: Color(0xffC5954B),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logo.jpg'),
        ),
      ),
    );
  }
}

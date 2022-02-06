import 'package:flutter/material.dart';
class MessegeScreen extends StatefulWidget {
  const MessegeScreen({Key? key}) : super(key: key);

  @override
  _MessegeScreenState createState() => _MessegeScreenState();
}

class _MessegeScreenState extends State<MessegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Messege Screen'),
      ),
    );
  }
}

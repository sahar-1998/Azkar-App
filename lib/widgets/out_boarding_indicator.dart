import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';

class out_boarding_indicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  out_boarding_indicator({this.marginEnd = 0, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? mainColor4 : mainColor3,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 5,
      width: 23,
    );
  }
}

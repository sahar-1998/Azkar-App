import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';
class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
    required this.scrollPosition,
  }) : super(key: key);

  final double scrollPosition;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 12,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DotsIndicator(
              position: scrollPosition,
              dotsCount: 3,
              decorator: DotsDecorator(
                //color: Color(0xffffeead),
                  activeColor: mainColor4,
                  spacing: const EdgeInsets.all(2),
                  size: const Size.square(6),
                  activeSize: const Size(12,6),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:multi_vendor_shop_app/widgets/dots_indicator_widget.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  double scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: PageView(
                onPageChanged: (val) {
                  setState(() {
                    scrollPosition = val.toDouble();
                  });
                },
                children: const [
                  Center(
                    child: Text(
                      'Banner 1',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Banner 2',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Banner 3',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        DotsIndicatorWidget(scrollPosition: scrollPosition),
      ],
    );
  }
}

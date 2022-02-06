import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';
import 'package:multi_vendor_shop_app/widgets/out_boarding_content.dart';
import 'package:multi_vendor_shop_app/widgets/out_boarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  final store = GetStorage();

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPage < 2,
              replacement: TextButton(
                onPressed: () {
                  store.write('outBoarding', true);
                  Navigator.pushReplacementNamed(context, '/main_screen');
                },
                child: const Text(
                  'start',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: mainColor4,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () => _pageController.animateToPage(2,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut),
                child: const Text(
                  'skip',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: mainColor4,
                  ),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 0,
              maxWidth: double.infinity,
              minHeight: 0,
              maxHeight: 500,
            ),
            child: PageView(
              controller: _pageController,
              // scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
                // print('Current Page: $value');
              },
              children: [
                OutBoardingContent(
                  image: 'assets/images/out.png',
                  mainText: 'Welcome to Shop App ',
                  subText: '+10 million Product, '
                      '+100 Catigories '
                      '+30 brands',
                ),
                OutBoardingContent(
                    image: 'assets/images/out3.png',
                    mainText: 'Safe and Secure Payment',
                    subText: 'many methods is available'),
                OutBoardingContent(
                    image: 'assets/images/out4.png',
                    mainText: 'Experience smart shopping',
                    subText: 'Enjoy with 14 day return'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: _currentPage == 0 ? mainColor2 : mainColor1,
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                color: _currentPage == 2 ? mainColor2 : mainColor1,
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              out_boarding_indicator(
                marginEnd: 10,
                selected: _currentPage == 0,
              ),
              out_boarding_indicator(
                marginEnd: 10,
                selected: _currentPage == 1,
              ),
              out_boarding_indicator(
                selected: _currentPage == 2,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: _currentPage == 2,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  primary: mainColor1,
                ),
                onPressed: () {
                  store.write('outBoarding', true);
                  Navigator.pushReplacementNamed(context, '/main_screen');
                },
                child: const Text(
                  'start',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';

class HighlightBrands extends StatelessWidget {
  const HighlightBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Brand HighLight',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Container(
                                height: 120,
                                color: mainColor4,
                                child: const Center(
                                  child: Text(
                                    'Youtube Ad video \nabout product',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 4, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 45,
                                      color: mainColor6,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: 45,
                                      color: mainColor6,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            color: mainColor1,
                            height: 180,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

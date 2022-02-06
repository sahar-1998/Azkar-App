import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor_shop_app/widgets/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: mainColor5,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(8, 11, 8, 8),
                  hintText: 'Search in the Shop',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(CupertinoIcons.info, size: 17,),
                  Text('100% Guarantee', style: TextStyle(fontSize: 12),),
                ],
              ),
              Row(
                children: const [
                  Icon(CupertinoIcons.info, size: 17,),
                  Text('4 - 7 day return',style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                children: const [
                  Icon(CupertinoIcons.info, size: 17,),
                  Text('Trusted Brands', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:eas_pbb/src/widget/shop_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/constant.dart';
import '../utils/fonts.dart';
import '../utils/media_res.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  static const routeName = '/order';

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  List<Shop> shopList = [
    const Shop(shop: 'Gerai A', desc: 'Deskripsi bla bla blabbweiobvrwvbw viowvnowjv ubvcljdnvl jandnv iwe hvw ndvj lbwjdb bvjbjsdnvljlsnvlav knvlajnvljadn v'),
    const Shop(shop: 'Gerai B', desc: 'Deskripsi bla bla blabbweiobvrwvbw viowvnowjv ubvcljdnvl jandnv iwe hvw ndvj lbwjdb bvjbjsdnvljlsnvlav knvlajnvljadn v'),
    const Shop(shop: 'Gerai C', desc: 'Deskripsi bla bla blabbweiobvrwvbw viowvnowjv ubvcljdnvl jandnv iwe hvw ndvj lbwjdb bvjbjsdnvljlsnvlav knvlajnvljadn v'),
    const Shop(shop: 'Gerai D', desc: 'Deskripsi bla bla blabbweiobvrwvbw viowvnowjv ubvcljdnvl jandnv iwe hvw ndvj lbwjdb bvjbjsdnvljlsnvlav knvlajnvljadn v'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Order Now',
            style: TextStyle(
                fontFamily: Fonts.inter,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          backgroundColor: Constant.primaryColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                  MediaRes.map
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: shopList.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) =>
                    ShopItem(title: shopList[index].shop, description: shopList[index].desc)
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Shop {

  const Shop({
    required this.shop,
    required this.desc
  });

  final String shop;
  final String desc;
}

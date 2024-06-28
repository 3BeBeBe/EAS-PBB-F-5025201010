import 'package:eas_pbb/utils/constant.dart';
import 'package:eas_pbb/utils/fonts.dart';
import 'package:eas_pbb/utils/media_res.dart';
import 'package:flutter/material.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({super.key});

  static const routeName = '/promo';

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Promo',
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
                MediaRes.promoItem
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Judul Promo',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.inter,
                      color: Constant.blackColor
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text(
                    'Deskripsi bla bla blabbweiobvrwvbw viowvnowjv ubvcljdnvl jandnv iwe hvw ndvj lbwjdb bvjbjsdnvljlsnvlav knvlajnvljadn valakbvj lavnldan vlnadlvnla dnvlllkv',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.inter,
                        color: Constant.blackColor
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              margin: const EdgeInsets.only(bottom: 32),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.inter,
                      ),
                      backgroundColor: Constant.secondaryColor
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Claim Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

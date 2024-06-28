import 'package:eas_pbb/src/order_screen.dart';
import 'package:eas_pbb/src/promo_screen.dart';
import 'package:eas_pbb/utils/constant.dart';
import 'package:eas_pbb/utils/fonts.dart';
import 'package:eas_pbb/utils/media_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: Constant.secondaryColor,
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: Fonts.inter,
                        fontWeight: FontWeight.bold,
                        color: Constant.primaryColor
                      ),
                    ),
                    Text(
                      'Bagus Adhi',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: Fonts.inter,
                          fontWeight: FontWeight.w400,
                          color: Constant.primaryColor
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          '60',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            fontFamily: Fonts.inter,
                            color: Constant.blackColor
                          ),
                        ),
                        SizedBox(width: 6,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Star',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: Fonts.inter,
                                color: Constant.blackColor
                              ),
                            ),
                            Text(
                              'Balance',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: Fonts.inter,
                                  color: Constant.blackColor
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Image.asset(
                      MediaRes.indicator,
                      width: double.infinity,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity,
                      height: 1,
                      color: Constant.blackColor,
                    ),
                    const Text(
                      'Membership status',
                      style: TextStyle(
                        fontFamily: Fonts.inter,
                        fontSize: 10,
                        color: Constant.blackColor
                      ),
                    ),
                    const SizedBox(height: 24,),
                    const Text(
                      'Green Tier',
                      style: TextStyle(
                        fontFamily: Fonts.inter,
                        fontSize: 30,
                        color: Constant.secondaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 24,),
                    const Text(
                      '300 stras to gold tier',
                      style: TextStyle(
                          fontFamily: Fonts.inter,
                          fontSize: 10,
                          color: Constant.blackColor
                      ),
                    ),
                    const SizedBox(height: 12,),
                    const Text(
                      'Member since 26 June 2024',
                      style: TextStyle(
                          fontFamily: Fonts.inter,
                          fontSize: 10,
                          color: Constant.blackColor
                      ),
                    ),
                  ],
                ),

              ),
              const SizedBox(height: 32,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, PromoScreen.routeName);
                },
                child: Image.asset(MediaRes.promoSlider)
              ),
              const SizedBox(height: 48,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, OrderScreen.routeName);
                    },
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
                        'Order Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

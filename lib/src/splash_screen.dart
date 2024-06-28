import 'package:eas_pbb/src/login_screen.dart';
import 'package:eas_pbb/utils/constant.dart';
import 'package:eas_pbb/utils/media_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    splashMove();
  }

  void splashMove() async {
    await Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Constant.secondaryColor,
        child: Center(
          child: Image.asset(
            MediaRes.splashLogo
          ),
        ),
      ),
    );
  }
}

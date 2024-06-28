import 'package:eas_pbb/src/home_screen.dart';
import 'package:eas_pbb/src/register_screen.dart';
import 'package:eas_pbb/utils/constant.dart';
import 'package:eas_pbb/utils/fonts.dart';
import 'package:eas_pbb/utils/media_res.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constant.primaryColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(MediaRes.logo),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.inter,
                        color: Constant.secondaryColor
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      cursorColor: Constant.secondaryColor,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Constant.secondaryColor),
                        fillColor: Constant.secondaryColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constant.secondaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Constant.secondaryColor),
                        fillColor: Constant.secondaryColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constant.secondaryColor),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.18,),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, HomeScreen.routeName);
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
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ),
                    ),
                    const SizedBox(height: 12,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: const Text(
                        'Don’t have an account yet ?',
                        style: TextStyle(
                          fontSize: 15,
                          color: Constant.blackColor
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

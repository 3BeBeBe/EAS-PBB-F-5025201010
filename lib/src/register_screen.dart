import 'package:eas_pbb/src/login_screen.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/fonts.dart';
import '../utils/media_res.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.1,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Register',
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
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Constant.secondaryColor),
                        fillColor: Constant.secondaryColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constant.secondaryColor),
                        ),
                      ),
                    ),
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
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.15,),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, LoginScreen.routeName);
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
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 12,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: const Text(
                        'Already have an account ?',
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

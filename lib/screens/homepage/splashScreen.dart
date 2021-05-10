import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),
         () => Navigator.pushReplacementNamed(context, '/welcome')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Image(image: AssetImage("assets/images/logo.png")),
                SizedBox(height: 14,),
                Text('Hagglex', style: TextStyle(color: AppColors.WHITE, fontSize: 23, fontFamily: 'BasisGrotesque pro'),)
              ],
            ),
          ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.PRIMARY_COLOR1, AppColors.PRIMARY_COLOR2],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql/constants/colors.dart';
import 'package:flutter_graphql/constants/customButton.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40.5, horizontal: 29),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [AppColors.PRIMARY_COLOR1, AppColors.PRIMARY_COLOR2],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
          child: ListView(children: [
            SizedBox(height: 110),
            Text(
              'Welcome!',
              style: TextStyle(color: AppColors.WHITE, fontSize: 40),
            ),
            SizedBox(height: 20),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40.5, horizontal: 6),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.WHITE),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.WHITE),
                            ),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: AppColors.WHITE)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0.5, horizontal: 6),
                      child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password (Min. 8 characters)',
                            labelStyle: TextStyle(color: AppColors.WHITE),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.WHITE),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.WHITE),
                            ),
                          )),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/verifyAccount');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: AppColors.WHITE),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CustomButton(
                title: 'LOG IN',
                height: 50,
                bgcolor: AppColors.LOGIN_BTN,
                textColor: AppColors.PRIMARY_COLOR2,
                onPressed: () {
                  print('I was elevated');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/createAccount');
                      },
                      child: Text(
                        'New User?Create a new account',
                        style: TextStyle(color: AppColors.WHITE),
                      ))
                ],
              ),
            )
          ]),
        ));
  }
}

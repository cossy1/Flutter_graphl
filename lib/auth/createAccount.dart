import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql/constants/colors.dart';
import 'package:flutter_graphql/constants/customButton.dart';
import 'package:flutter_graphql/constants/mobileFormField.dart';

class CreateAccount extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController referralController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY_COLOR1,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [AppColors.PRIMARY_COLOR1, AppColors.PRIMARY_COLOR2],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.WHITE,
              ),
              height: 598.16,
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 30),
              width: 344,
              child: ListView(
                children: [
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create a new account',
                            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Password (Min. 8 characters)',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: TextFormField(
                                controller: usernameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Create a username',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                )),
                          ),
                          Container(child: MobileFormField(),
                          margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.2, color: Colors.black),
                              ),
                              color: AppColors.WHITE,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                                controller: referralController,
                                decoration: InputDecoration(
                                  labelText: 'Referral code (optional)',
                                  labelStyle: TextStyle(color: Colors.grey, fontSize: 11),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Center(
                              child: Text('By signing, you agree to HaggleX terms and privacy policy.', style: TextStyle(fontSize: 10),),
                            ),
                          ),
                          CustomButton(
                            onPressed: (){
                              print('clicked!!!!');
                            },
                            title: 'SIGN UP',
                            textColor: AppColors.WHITE,
                            bgcolor: AppColors.PRIMARY_COLOR1,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}

/*
*  signin_widget.dart
*  Test3
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:test3/values/values.dart';
import 'package:test3/welcome_widget/welcome_widget.dart';


class SigninWidget extends StatelessWidget {
  
  void onButtonSigninPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeWidget()));
  
  void onButtonSignupPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(top: 104),
                child: Image.asset(
                  "assets/images/image.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Container(
              height: 110,
              margin: EdgeInsets.only(left: 20, top: 76, right: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 1),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryElement,
                      borderRadius: Radii.k20pxRadius,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "用户名",
                        contentPadding: EdgeInsets.only(left: 30, top: 10),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 142, 142, 147),
                        fontFamily: "Microsoft YaHei",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryElement,
                      borderRadius: Radii.k20pxRadius,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "密码",
                        contentPadding: EdgeInsets.only(left: 30, top: 10),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 142, 142, 147),
                        fontFamily: "Microsoft YaHei",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      obscureText: true,
                      maxLines: 1,
                      autocorrect: false,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 36),
              child: FlatButton(
                onPressed: () => this.onButtonSigninPressed(context),
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k20pxRadius,
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "登陆",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "Microsoft YaHei",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 44),
              child: FlatButton(
                onPressed: () => this.onButtonSignupPressed(context),
                color: AppColors.accentElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k20pxRadius,
                ),
                textColor: Color.fromARGB(255, 142, 142, 147),
                padding: EdgeInsets.all(0),
                child: Text(
                  "注册",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 142, 142, 147),
                    fontFamily: "Microsoft YaHei",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
*  welcome_widget.dart
*  Test3
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:test3/desc_widget/desc_widget.dart';
import 'package:test3/signin_widget/signin_widget.dart';
import 'package:test3/values/values.dart';


class WelcomeWidget extends StatelessWidget {
  
  void onButtonSigninPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SigninWidget()));
  
  void onButtonSkipPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => DescWidget()));
  
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
                width: 262,
                height: 230,
                margin: EdgeInsets.only(top: 80),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: Radii.k20pxRadius,
                ),
                child: Image.asset(
                  "assets/images/image-2.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "第一个程序测试",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Microsoft YaHei",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    letterSpacing: 1.09091,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 9),
                child: Text(
                  "这里是欢迎文字的描述",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Microsoft YaHei",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.63636,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 36),
              child: FlatButton(
                onPressed: () => this.onButtonSkipPressed(context),
                color: AppColors.secondaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k20pxRadius,
                ),
                textColor: Color.fromARGB(255, 142, 142, 147),
                padding: EdgeInsets.all(0),
                child: Text(
                  "跳过登陆，直接使用",
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
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 60),
              child: FlatButton(
                onPressed: () => this.onButtonSigninPressed(context),
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k20pxRadius,
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "用户登陆",
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
          ],
        ),
      ),
    );
  }
}
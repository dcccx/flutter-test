/*
*  desc_skip2_widget.dart
*  Test3
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:test3/values/values.dart';
import 'package:test3/welcome_widget/welcome_widget.dart';


class DescSkip2Widget extends StatelessWidget {
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeWidget()));
  
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
              alignment: Alignment.topLeft,
              child: Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(left: 31, top: 84),
                child: Image.asset(
                  "assets/images/image-4.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 31, top: 18),
                child: Text(
                  "这个页面就是最后了",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Microsoft YaHei",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 0.72727,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "点下面就返回了",
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
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 100),
              child: FlatButton(
                onPressed: () => this.onViewPressed(context),
                color: AppColors.primaryElement,
                shape: RoundedRectangleBorder(
                  borderRadius: Radii.k20pxRadius,
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "回到欢迎页",
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
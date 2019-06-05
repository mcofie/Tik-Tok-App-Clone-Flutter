import 'package:flutter/material.dart';
import 'package:tiktok_clone/resources/dimen.dart';
import 'package:tiktok_clone/resources/strings.dart';

Widget homeHeader() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    height: Dimen.headerHeight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            AppStrings.followingString,
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Text("|",
            style: TextStyle(
                fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold)),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(AppStrings.forYouString,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        )
      ],
    ),
  );
}

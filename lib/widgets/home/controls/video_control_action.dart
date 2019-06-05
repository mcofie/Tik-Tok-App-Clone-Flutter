import 'package:flutter/material.dart';
import 'package:tiktok_clone/resources/dimen.dart';

Widget videoControlAction({IconData icon, String label, double size = 35}) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Dimen.defaultTextSpacing, bottom: Dimen.defaultTextSpacing),
          child: Text(
            label ?? "",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        )
      ],
    ),
  );
}

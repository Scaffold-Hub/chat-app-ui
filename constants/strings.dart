import 'package:flutter/material.dart';

// ignore: prefer_const_declarations
final String appBarTextTitle = 'All Messages';
// ignore: prefer_const_declarations
final String hintText = 'Search messages';
// ignore: prefer_const_declarations
final Color appBarColor = Colors.transparent;
// ignore: prefer_const_declarations
final Color isOnlineColor = const Color.fromARGB(255, 30, 180, 35);
// ignore: prefer_const_declarations
final Color defaultColor = Colors.white;
// ignore: prefer_const_declarations
final Color isOfflineColor = Colors.red;
// ignore: prefer_const_declarations
final double appBarBorderRadius = 25.0;
// ignore: prefer_const_declarations
final double appBarHeightWidht = 9.0;
// ignore: prefer_const_declarations
final Color deepOrangeColor = Colors.deepOrange;
// ignore: prefer_const_declarations
final Color searchField = const Color.fromARGB(255, 66, 65, 65);
// ignore: prefer_const_declarations
final Color colorGrey = Colors.grey;
List<IconData> iconData = [
  Icons.search,
];

final TextStyle cardNameStyle = TextStyle(
  color: defaultColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
);
final TextStyle messageStyle = TextStyle(
  color: defaultColor,
  fontSize: 15.0,
);

final TextStyle cardTextStyleOther = TextStyle(
  color: colorGrey,
  fontSize: 12.0,
  fontWeight: FontWeight.w600,
);

final TextStyle cardStatus = TextStyle(
  color: defaultColor,
  fontSize: 12.0,
);

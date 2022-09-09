import 'package:flutter/material.dart';
import 'package:tasky/core/utills/style_manager.dart';

AppBar defaultAppbar({required String title, Color? backgroundColor
,List<Widget>?actions}) {
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor ?? Colors.white,
    centerTitle: true,
    actions: actions??[],
    title: Text(
      title,
      style: headerTextStyle(color: Colors.white),
    ),
  );
}

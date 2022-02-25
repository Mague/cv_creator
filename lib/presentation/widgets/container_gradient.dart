import 'package:cv_creator/config/themes/globals.dart';
import 'package:flutter/material.dart';


Widget containerGradient(bool typeTheme, Widget child) {
  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: !typeTheme ? drawerColorLight : drawerColorDark)),
      child: child);
}

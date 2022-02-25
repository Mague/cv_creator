import 'package:flutter/material.dart';

Color cyanTwo = const Color.fromRGBO(128, 230, 255, 1);
Color cyanOne = const Color.fromRGBO(0, 204, 255, 1);
Color turquoiceOne = const Color.fromRGBO(0, 76, 95, 1);
Color turquoiceTwo = const Color.fromRGBO(0, 102, 127, 1);
List<Color> drawerColorLight = [cyanOne, cyanTwo];
List<Color> drawerColorDark = [
  const Color.fromRGBO(0, 76, 95, 1),
  const Color.fromRGBO(0, 102, 127, 1)
];
ThemeData themeOne = ThemeData(
  primaryColor: cyanOne,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: cyanTwo),
);
ThemeData themeTwo = ThemeData(
  primaryColor: turquoiceOne,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: turquoiceTwo),
);

final bgContainer = Colors.grey[200];
final bgColorGrey=Colors.grey[200];
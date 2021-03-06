import 'package:flutter/material.dart';
import 'package:music_player/theme_module/model/theme_model.dart';

ThemeData capTenJack = ThemeData(
    primaryColor: const Color.fromRGBO(87, 202, 133, 1),
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: Colors.white,
    textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(color: Colors.white),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none));
ThemeModel capTenJackTheme = ThemeModel(
    capTenJack,
    const LinearGradient(colors: [
      Color.fromRGBO(24, 78, 104, 1),
      Color.fromRGBO(87, 202, 133, 1),
    ]),
    "CapTen Jack");

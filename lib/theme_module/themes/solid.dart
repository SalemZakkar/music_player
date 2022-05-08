import 'package:flutter/material.dart';
import 'package:music_player/theme_module/model/theme_model.dart';

ThemeData dark = ThemeData(
    primaryColor: Colors.white,
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: Colors.white,
    textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 23)),
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(color: Colors.white),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none));

ThemeModel darkTheme = ThemeModel(
    dark,
    const LinearGradient(colors: [
      Color.fromRGBO(33, 33, 33, 1),
      Color.fromRGBO(33, 33, 33, 1),
    ]),
    "Dark");

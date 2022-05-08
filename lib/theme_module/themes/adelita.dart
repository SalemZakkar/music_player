import 'package:flutter/material.dart';

ThemeData adeLita = ThemeData(
    primaryColor: const Color.fromRGBO(197, 51, 100, 1),
    primarySwatch: Colors.pink,
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
        labelStyle: TextStyle(
            color: Colors.white
        ),),
    inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none));


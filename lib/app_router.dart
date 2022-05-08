import 'package:flutter/material.dart';
import 'package:music_player/module_music/ui/page/home_page.dart';
import 'package:music_player/theme_module/storage/persistance.dart';
import 'package:music_player/theme_module/ui/page/themes.dart';

class AppRouter {
  static const String home = "/home";
  static const String themes = "/themes";

  static Route? route(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case themes:
        return MaterialPageRoute(builder: (context) => const ThemePage());
    }
    return null;
  }
}

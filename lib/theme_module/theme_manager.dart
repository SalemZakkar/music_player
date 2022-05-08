

import 'package:music_player/logs/messages.dart';
import 'package:music_player/theme_module/buisness_logic/cubit/theme_cubit.dart';
import 'package:music_player/theme_module/storage/persistance.dart';
import 'package:music_player/theme_module/themes/list.dart';

class ThemeManager {
static void init()
{
  int theme = themeSettings.getTheme();
  Messages.setTheme(theme.toString());
  activeTheme = theme;
}
static void setTheme(int theme)
{
  themeCubit.changeTheme(theme);
  themeSettings.setTheme(theme);
  Messages.setTheme(theme.toString());
}
}
import 'package:music_player/constants/strings.dart';
import 'package:music_player/logs/messages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeSettings {
  String name = "THEME";
  late SharedPreferences sharedPreferences;

  Future<bool> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return true;
  }

  void setTheme(int i) {
    sharedPreferences.setInt(name, i);
    Messages.setSettingSharedPreference(name , [i.toString()]);
  }

  int getTheme() {
    int? theme = sharedPreferences.getInt(name);
    Messages.getSettingSharedPreferences(name , [theme.toString()]);
    if (theme == null) {
      return 0;
    }
    return theme;
  }
}

ThemeSettings themeSettings = ThemeSettings();

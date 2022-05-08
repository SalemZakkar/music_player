import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_player/logs/messages.dart';
import 'package:music_player/theme_module/theme_manager.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  void changeTheme(int theme)
  {
    emit(ThemeChange(theme));
  }
}
ThemeCubit themeCubit = ThemeCubit();

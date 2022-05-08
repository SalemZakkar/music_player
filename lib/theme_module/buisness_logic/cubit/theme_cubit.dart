import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  void changeTheme(int theme) {
    emit(ThemeChange(theme));
  }
}

ThemeCubit themeCubit = ThemeCubit();

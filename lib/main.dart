import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/app_router.dart';
import 'package:music_player/theme_module/buisness_logic/cubit/theme_cubit.dart';
import 'package:music_player/theme_module/storage/persistance.dart';
import 'package:music_player/theme_module/theme_manager.dart';
import 'package:music_player/theme_module/themes/list.dart';

class TheBlackPlMusicPlayer extends StatefulWidget {
  const TheBlackPlMusicPlayer({Key? key}) : super(key: key);

  @override
  State<TheBlackPlMusicPlayer> createState() => _TheBlackPlMusicPlayerState();
}

class _TheBlackPlMusicPlayerState extends State<TheBlackPlMusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ThemeCubit , ThemeState>(
      listener: (context , state)
      {
        if(state is ThemeChange)
          {
            setState(() {
              activeTheme = state.theme;
            });
          }
      },
      child: MaterialApp(
        initialRoute: AppRouter.home,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.route,
        theme: appThemes[activeTheme],
        builder: (context, child) => child!,
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await themeSettings.init();
  ThemeManager.init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ThemeCubit>(
        create: (context) => themeCubit,
      )
    ],
    child: const TheBlackPlMusicPlayer(),
  ),

  );
}

import 'package:flutter/material.dart';
import 'package:music_player/shared_widget/gradient_base_widget.dart';
import 'package:music_player/theme_module/themes/list.dart';
import 'package:music_player/theme_module/ui/widget/theme_card.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return GradientBase(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Themes"),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: appThemes.length,
            itemBuilder: (context , index)
            {
              return ThemeCard(themeData: appThemes[index], id: index);
            },
          ),
        ),
      ),
    );
  }
}

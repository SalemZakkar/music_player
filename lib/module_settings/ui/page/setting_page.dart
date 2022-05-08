import 'package:flutter/material.dart';
import 'package:music_player/app_router.dart';
import 'package:music_player/module_settings/ui/widget/settings_card.dart';
import 'package:music_player/shared_widget/gradient_base_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return GradientBase(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          color: themeData.scaffoldBackgroundColor,
          child: ListView(
            children: [
              SettingCard(
                title: "Themes",
                onTap: () => Navigator.pushNamed(context, AppRouter.themes),
                icon: const Icon(Icons.format_paint),
              )
            ],
          ),
        ),
      ),
    );
  }
}

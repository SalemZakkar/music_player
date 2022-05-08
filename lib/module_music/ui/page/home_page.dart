// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:music_player/app_router.dart';
import 'package:music_player/module_music/ui/page/all_music.dart';
import 'package:music_player/shared_widget/gradient_base_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return GradientBase(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("BlackPL Music"),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.setting);
                },
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.search);
                },
                icon: const Icon(Icons.search),
              )
            ],
          ),
          body: const AllMusic(),
        ),
      ),
    );
  }
}

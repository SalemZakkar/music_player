import 'package:flutter/material.dart';
import 'package:music_player/theme_module/model/theme_model.dart';
import 'package:music_player/theme_module/theme_manager.dart';

class ThemeCard extends StatefulWidget {
  final ThemeModel themeModel;
  final int id;
  const ThemeCard({Key? key, required this.themeModel, required this.id})
      : super(key: key);

  @override
  State<ThemeCard> createState() => _ThemeCardState();
}

class _ThemeCardState extends State<ThemeCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        ThemeManager.setTheme(widget.id);
      },
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: size.width * 0.9,
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: widget.themeModel.linearGradient,
              border: Border.all(color: widget.themeModel.themeData.cardColor)),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.themeModel.name,
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: widget
                        .themeModel.themeData.textTheme.bodyText1?.color!),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  colorPalette(
                      widget.themeModel.themeData.cardColor.withOpacity(0.5)),
                  colorPalette(widget.themeModel.themeData.primaryColor),
                  colorPalette(
                      widget.themeModel.themeData.textTheme.bodyText1?.color! ??
                          Colors.transparent),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget colorPalette(Color color) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey)),
    ),
  );
}

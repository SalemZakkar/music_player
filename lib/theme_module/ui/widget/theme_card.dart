import 'package:flutter/material.dart';
import 'package:music_player/theme_module/theme_manager.dart';
import 'package:music_player/theme_module/themes/gradients.dart';
import 'package:music_player/theme_module/themes/list.dart';

class ThemeCard extends StatefulWidget {
  final ThemeData themeData;
  final int id;
  const ThemeCard({Key? key , required this.themeData , required this.id}) : super(key: key);

  @override
  State<ThemeCard> createState() => _ThemeCardState();
}

class _ThemeCardState extends State<ThemeCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        ThemeManager.setTheme(widget.id);
      },
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: size.width*0.9,
          height: 350,
          decoration:  BoxDecoration(
            borderRadius:  BorderRadius.circular(20),
            gradient: gradients[widget.id],
            border: Border.all(color: widget.themeData.cardColor)
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(themNames[widget.id] , textScaleFactor: 1.5,style: TextStyle(color: widget.themeData.textTheme.bodyText1?.color!),),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  colorPalette(widget.themeData.cardColor.withOpacity(0.5)),
                  colorPalette(widget.themeData.primaryColor),
                   colorPalette(widget.themeData.textTheme.bodyText1?.color! ?? Colors.transparent),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget colorPalette(Color color)
{
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey)
      ),
    ),
  );
}

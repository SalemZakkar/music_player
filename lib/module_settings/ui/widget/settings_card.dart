import 'package:flutter/material.dart';

class SettingCard extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final Icon icon;
  const SettingCard(
      {Key? key, required this.title, required this.onTap, required this.icon})
      : super(key: key);

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            width: size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                color: themeData.cardColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.05,
                ),
                widget.icon,
                SizedBox(
                  width: size.width * 0.1,
                ),
                Text(
                  widget.title,
                  textScaleFactor: 1.2,
                  style:
                      TextStyle(color: themeData.textTheme.bodyText1?.color!),
                ),
              ],
            )),
      ),
    );
  }
}
